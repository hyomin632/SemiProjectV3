package Celeste.spring.mvc.dao;

import Celeste.spring.mvc.vo.Member;
import Celeste.spring.mvc.vo.Zipcode;

import java.util.List;

public interface MemberDAO {

    int insertMember(Member m);
    List<Zipcode> selectZipcode(String dong);
    int selectOneUserid(String uid);
    int selectLogin(Member m);

}
