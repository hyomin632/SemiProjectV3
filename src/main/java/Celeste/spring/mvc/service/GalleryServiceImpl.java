package Celeste.spring.mvc.service;

import Celeste.spring.mvc.dao.GalleryDAO;
import Celeste.spring.mvc.utils.ImgUploadUtil;
import Celeste.spring.mvc.vo.Gallery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

@Service("gsrv")
public class GalleryServiceImpl implements GalleryService {

    private GalleryDAO gdao;
    private ImgUploadUtil imgutil;

    @Autowired
    public GalleryServiceImpl(GalleryDAO gdao, ImgUploadUtil iuu) {
        this.gdao = gdao;
        this.imgutil = iuu;
    }

    @Override // 이미지 업로드 후, 디비에 저장
    public boolean newGallery(Gallery g, MultipartFile[] img) {
        // 첨부 이미지를 지정한 위치에 저장
        // 저장한 이미지 파일의 정보를 테이블에 저장
        // 첫 번재 이미지의 대해 썸네일 생성

        String uuid = imgutil.makeUUID(); // 식별코드 생성

        // 첨부파일이 존재한다면
        if (imgutil.checkGalleryFiles(img)) {

            // 업로드한 이미지 파일명을 저장하기 위해 동적배열 생성
            List<String> imgs = new ArrayList<>();

            // 첨부파일이 존재한다면 서버에 저장하고
            // 그 결과로 파일이름을 받아서 동적배열에 저장
            for(MultipartFile f : img) {
                if (!f.getOriginalFilename().isEmpty())
                    imgs.add(imgutil.ImageUpload(f, uuid));
                    // 업로드한 뒤 결과값은 '파일명/파일크기'로 넘어옴
                else
                    imgs.add("-/-");
                // 업로드를 하지 못한 경우는 '-/-'만 넘김
            }

            // 결과값을 테이블에 저장하기 위해 파일명과 파일크기별로 분리해서 단일변수에 저장성
            String fnames = "";
            String fsizes = "";

            for (int i = 0; i < imgs.size(); ++i) {
                fnames += imgs.get(i).split("[/]")[0] + "/";
                fsizes += imgs.get(i).split("[/]")[1] + "/";
            }

            g.setFnames( fnames );
            g.setFsizes( fsizes );
            g.setUuid( uuid );
        }

        // 업로드한 이미지 정보를 테이블에 저장
        int id = gdao.insertGallery(g);

        // 업로드한 이미지들 중 첫 번째 이미지를 썸네일로 만들기 위해 파일명 생성
        String ofname = g.getFnames().split("/")[0];
        int pos = ofname.lastIndexOf(".");
        String fname = ofname.substring(0, pos);
        String fext = ofname.substring(pos + 1);
        ofname = fname + uuid + "." + fext;

        imgutil.imageCropResize(ofname, id + "");

        return true;
    }

    @Override
    public List<Gallery> readGallery(String cp) {
        int snum = (Integer.parseInt(cp) - 1) * 10;

        return gdao.selectGallery(snum);
    }

    @Override
    public Gallery readOneGallery(String gno) {
        return gdao.selectOneGallery(gno);
    }

    @Override
    public void modifyGallery(Gallery g, MultipartFile[] img) {
        // 수정된 첨부 이미지를 지정한 위치에 저장
        // 수정된 이미지 파일의 정보를 테이블에 수정
        // 수정된 이미지가 첫 번재 이미지인 경우 다시 썸네일 생성 (선택사항)
        // 기존 이미지와 썸네일을 제거 (선택사항)

        // 첨부파일이 존재한다면
        if (imgutil.checkGalleryFiles(img)) {

            List<String> imgs = new ArrayList<>();

            for(MultipartFile f : img) {
                if (!f.getOriginalFilename().isEmpty())
                    imgs.add(imgutil.ImageUpload(f, g.getUuid()));
                else
                    imgs.add("-/-");
            }

            // 기존 fnames, fsizes를 읽어옴
            String fn = gdao.readFnames(g.getGno());
            String fs = gdao.readFsizes(g.getGno());

            // 새로 생성된 fnames와 fsizes 값을 기존의 fnames와 fsize에 수정
            String[] ofn = fn.split("[/]");
            String[] ofs = fs.split("[/]");

            String fnames = "";
            String fsizes = "";
            for (int i = 0; i < imgs.size(); ++i) {
                fnames += imgs.get(i).split("[/]")[0] + "/";
                fsizes += imgs.get(i).split("[/]")[1] + "/";
            }

            String[] nfn = fnames.split("[/]");
            String[] nfs = fsizes.split("[/]");

            // todie = 13
            // ofn[0] = 새로 수정된 파일1명
            // ofn[2] = 새로 수정된 파일2명
            String todie[] = new String[3]; // 삭제 대상 파일 이름
            for (int i = 0; i < g.getTodie().length(); ++i) {
                int pos = Integer.parseInt(g.getTodie().substring(i, i + 1));
                ofn[pos - 1] = nfn[i]; // 변경한 파일 이름 저장
                ofs[pos - 1] = nfs[i];
                todie[i] = fn.split("[/]")[pos - 1]; // 삭제할 파일 이름 저장
            }

            // 수정된 결과 확인
            // System.out.println(String.join("/", ofn));
            fnames = String.join("/", ofn);
            fsizes = String.join("/", ofs);

            g.setFnames( fnames );
            g.setFsizes( fsizes );

            // 이미지 파일과 썸네일 제거
            // abc123.png/987xyz.jpg
            // abc123.png, uuid
            // => abc123uuid.png
            // => small_글번호_abc123uuid.png
            String fpath = "/usr/local/var/www/";
            for (int i = 0; i < todie.length; ++i) {
                try {
                    // 파일 이름 재조합을 위해 분해
                    int pos = todie[i].lastIndexOf(".");
                    String name = todie[i].substring(0, pos);
                    String ext = todie[i].substring(pos + 1);
                    // 이미지와 썸네일 경로 생성
                    String one = name + g.getUuid() + "." + ext;
                    String two = "thumb/small_" + g.getGno() + "_" + one;

                    File f = new File(fpath + "cdn/" + one); // 이미지
                    f.delete();
                    f = new File(fpath + two); // 썸네일
                    f.delete();
                } catch (Exception ex) { }
            }
        }

        // 수정된 내용 및 파일 정보를 테이블에 저장
        gdao.updateGallery(g);

        // 썸네일 이미지 생성
        // 업로드한 이미지들 중 첫 번째 이미지를 썸네일로 만들기 위해 파일명 생성
        String ofname = g.getFnames().split("/")[0];
        int pos = ofname.lastIndexOf(".");
        String fname = ofname.substring(0, pos);
        String fext = ofname.substring(pos + 1);
        ofname = fname + g.getUuid() + "." + fext;

        imgutil.imageCropResize(ofname, g.getGno() + "");
    }
}
