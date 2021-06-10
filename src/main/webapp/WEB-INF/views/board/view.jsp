<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%-- 줄 바꿈 기호를 변수로 생성 -> br태그 변환 필요! --%>
<c:set var="newChar" value="
" scope="application" />

<div id="main">
	<div>
	    <i class="fas fa-comments fa-2x"> 자유 게시판</i>
	    <hr>
	</div> <!-- 페이지 타이틀 -->

    <div>
        <div class="row">
            <div class="col-5 offset-1">
                <button type="button" class="btn btn-light"><i class="bi bi-chevron-left"></i> 이전 게시물</button>
                <button type="button" class="btn btn-light"><i class="bi bi-chevron-right"></i> 다음 게시물</button>
            </div>
            <div class="col-5 text-right">
                <button type="button" class="btn btn-light"><i class="fas fa-plus-circle"> 새 글 쓰기</i></button>
            </div>
        </div>

        <div class="row">
            <table class="table col-10 offset-1">
                <tr class="tbbg1 text-center">
                    <th colspan="2">
                    <h2>${bd.title}</h2>
                    </th>
                </tr>
                <tr class="tbbg2">
                    <td style="width: 50%">${bd.userid}</td>
                    <td class="text-right">${bd.regdate} / ${bd.thumbup} / ${bd.views}</td>
                </tr>
                <tr class="tbbg3 bdcsize">
                    <td colspan="2">
                        ${fn:replace(bd.contents, newChar, "<br>")}
                    </td>
                </tr>
            </table>
        </div>

        <div class="row">
            <div class="col-5 offset-1">
                <%-- 자신이 작성한 글에 대해 수정/삭제 버튼이 표시되어야 함 --%>
                <c:if test="${not empty UID and UID eq bd.userid}">
                    <button type="button" class="btn btn-warning text-white"><i class="bi bi-question-circle"></i> 수정하기</button>
                    <button type="button" class="btn btn-danger"><i class="bi bi-x-circle-fill"></i> 삭제하기</button>
                </c:if>
            </div>
            <div class="col-5 text-right">
                <button type="button" class="btn btn-light"><i class="bi bi-list-task"></i> 목록으로</button>
            </div>
        </div>
    </div> <!-- 본문글 -->

    <div>
        <div class="row">
            <h3 class="col-10 offset-1"><i class="bi bi-chat-dots-fill"></i> 나도 한 마디</h3>
        </div>

        <table class="table col-10 offset-1">
            <tr><td><h4>Doedoe</h4></td>
                <td><div class="cmtbg1">2021-05-21 12:40:16</div>
                    <p>맞아요~ 제가 항상 그래요~ ㅠ,ㅠ</p></td></tr>
            <tr><td></td>
                <td><div class="cmtbg2">
                    <span>Celeste</span>
                    <span class="pushright">2021-05-21 12:45:51</span></div>
                    <p>우아 저랑 똑같으시군요-!</p></td></tr>
            <tr><td><h4>Doedoe</h4></td>
                <td><div class="cmtbg1">2021-05-21 12:40:16</div>
                    <p>맞아요~ 제가 항상 그래요~ ㅠ,ㅠ</p></td></tr>
            <tr><td><h4>Doedoe</h4></td>
                <td><div class="cmtbg1">2021-05-21 12:40:16</div>
                    <p>맞아요~ 제가 항상 그래요~ ㅠ,ㅠ</p></td></tr>
            <tr><td><h4>Doedoe</h4></td>
                <td><div class="cmtbg1">2021-05-21 12:40:16</div>
                    <p>맞아요~ 제가 항상 그래요~ ㅠ,ㅠ</p></td></tr>
            <tr><td><h4>Doedoe</h4></td>
                <td><div class="cmtbg1">2021-05-21 12:40:16</div>
                    <p>맞아요~ 제가 항상 그래요~ ㅠ,ㅠ</p></td></tr>
            <tr><td><h4>Doedoe</h4></td>
                <td><div class="cmtbg1">2021-05-21 12:40:16</div>
                    <p>맞아요~ 제가 항상 그래요~ ㅠ,ㅠ</p></td></tr>
        </table>
    </div> <!-- 댓글 목록 -->

    <div>
        <div class="row">
            <form name="replyfrm" id="replyfrm"
                  class="card card-body bg-light col-10 offset-1">
                <div class="form-group row justify-content-center">
                    <label class="col-form-label col-2 pushdwn" for="reply">작성자</label>
                    <textarea class="form-control col-7" name="reply" id="reply" rows="5"></textarea>&nbsp;&nbsp;
                    <button type="button" class="btn btn-dark form-control col-2 pushdwn"><i class="fas fa-comment-dots"></i> 댓글 쓰기</button>
                </div>
            </form>
        </div>
    </div> <!-- 댓글 쓰기 -->
</div>