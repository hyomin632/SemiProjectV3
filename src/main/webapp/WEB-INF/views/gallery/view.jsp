<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="fnames" value="${fn:split(g.fnames, '/')}" />
<c:set var="fsizes" value="${fn:split(g.fsizes, '/')}" />
<c:set var="baseURL" value="http://localhost/cdn/" />

<div id="main">
	<div>
	    <i class="fas fa-file-image fa-2x"> 갤러리</i>
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
                    <h2>${g.title}</h2>
                    </th>
                </tr>
                <tr class="tbbg2">
                    <td style="width: 50%">${g.userid}</td>
                    <td class="text-right">${fn:substring(g.regdate, 0, 10)} / ${g.thumbup} / ${g.views}</td>
                </tr>
                <tr class="tbbg3">
                    <td colspan="2">
                        <div>${g.contents}</div>

                        <c:forEach var="f" items="${fnames}">
                            <c:if test="${f ne '-'}">
                                <c:set var="pos" value="${fn:indexOf(f, '.')}" />
                                <c:set var="fname" value="${fn:substring(f, 0, pos)}" />
                                <c:set var="fext" value="${fn:substring(f, pos + 1, fn:length(f))}" />
                                <div>
                                    <img src="${baseURL}${fname}${g.uuid}.${fext}" class="img-fluid">
                                </div>
                            </c:if>
                        </c:forEach>
                    </td>
                </tr> <!-- 본문 -->

                <%-- 첨부파일 표시 --%>
                <c:forEach begin="0" end="${fn:length(fnames) - 1}" var="i">
                    <c:if test="${fnames[i] ne '-'}">
                        <tr><td colspan="2" class="tbbg4">
                            <td><i class="fas fa-file-archive"></i> ${fnames[i]} (${fsizes[i]}KB)</td></tr>
                    </c:if>
                </c:forEach>
            </table>
        </div>

        <div class="row">
            <div class="col-5 offset-1">
                <button type="button" class="btn btn-warning text-white" id="modgbtn"><i class="fas fa-edit"></i> 수정하기</button>
                <button type="button" class="btn btn-danger" id="rmvgbtn"><i class="fas fa-trash-alt"></i> 삭제하기</button>
            </div>
            <div class="col-5 text-right">
                <button type="button" class="btn btn-light"><i class="bi bi-list-task"></i> 목록으로</button>
            </div>
        </div>
        <input type="hidden" id="gno" value="${param.gno}">
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
