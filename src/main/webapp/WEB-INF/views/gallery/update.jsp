<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="fname" value="${fn:split(g.fnames, '/')}" />

<div id="main" class="row">
	<script src="https://www.google.com/recaptcha/api.js"></script>
	<div>
	    <i class="fas fa-file-image fa-2x"> 갤러리</i>
	    <hr>
	</div> <!-- 페이지 타이틀 -->
	
	<div class="row">
	    <div class="col-5 offset-1">
	        <h3><i class="fas fa-edit"> 수정하기</i></h3>
	    </div>
	    <div class="col-5 text-right">
	        <button type="button" class="btn btn-light"><i class="fas fa-list"> 목록으로</i></button>
	    </div>
	</div>

    <div class="card card-body bg-light col-10 offset-1">
        <form name="modgalfrm" id="modgalfrm">
            <div class="form-group row">
                <label for="title" class="col-form-label col-2 text-right text-danger">제목</label>
                <input type="text" name="title" id="title" class="form-control col-9 border-danger" value="${g.title}">
            </div>
            <div class="form-group row">
                <label for="userid" class="col-form-label col-2 text-right text-danger">작성자</label>
                <input type="text" name="userid" id="userid" class="form-control col-9 border-danger" readonly value="${g.userid}">
            </div>
            <div class="form-group row">
                <label for="contents" class="col-form-label col-2 text-right text-danger">본문 내용</label>
                <textarea id="contents" name="contents" rows="15" class="form-control col-9 border-danger">${g.contents}</textarea>
            </div>

            <!-- 첨부파일들 -->
            <div class="form-group row">
                <label class="col-form-label col-2 text-right text-danger" for="file1">파일첨부</label>

                <div class="custom-control custom-checkbox">
                    <input type="checkbox" id="die1" class="custom-control-input">
                    <label for="die1" class="custom-control-label"></label>
                </div>
                <div class="custom-file col-8">
                    <input type="file" name="img" id="file1" class="custom-file-input" disabled>
                    <label class="custom-file-label">${fname[0]}</label>
                </div>
            </div>

            <div class="form-group row">
                <div class="custom-control custom-checkbox offset-2">
                    <input type="checkbox" id="die2" class="custom-control-input">
                    <label for="die2" class="custom-control-label"></label>
                </div>
                <div class="custom-file col-8">
                    <input type="file" name="img" id="file2" class="custom-file-input" disabled>
                    <label class="custom-file-label">${fname[1]}</label>
                </div>
            </div>

            <div class="form-group row">
                <div class="custom-control custom-checkbox offset-2">
                    <input type="checkbox" id="die3" class="custom-control-input">
                    <label for="die3" class="custom-control-label"></label>
                </div>
                <div class="custom-file col-8">
                    <input type="file" name="img" id="file3" class="custom-file-input" disabled>
                    <label class="custom-file-label">${fname[2]}</label>
                </div>
            </div>

            <!-- 자동 기입 방지 -->
            <div class="form-group row">
                <label class="col-form-label col-2 text-right text-danger">자동 기입 방지</label>
                <div class="g-recaptcha" data-sitekey="6LfYIwgbAAAAAJH66wTOE11GOtExqC-Svf_sATdq"></div>
			    <input type="hidden" id="g-recaptcha" name="g-recaptcha">
            </div>
            <div class="form-group row">
                <hr class="col-10">
                <div class="col-12 text-center">
                    <button type="button" class="btn btn-primary" id="modgal"><i class="fas fa-check-circle"></i> 입력완료</button>
                    <button type="reset" class="btn btn-danger"><i class="fas fa-time-circle"></i> 다시 입력</button>
                </div>
            </div>

            <%-- 첨부파일 수정 여부를 저장하기 위한 변수 --%>
            <input type="hidden" name="todie" id="todie">
            <%-- uuid를 저장하기 위한 변수 --%>
            <input type="hidden" name="uuid" value="${g.uuid}">
            <input type="hidden" name="gno" value="${g.gno}">

        </form>
    </div>
</div>
