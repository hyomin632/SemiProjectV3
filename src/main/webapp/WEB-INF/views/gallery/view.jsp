<%@ page pageEncoding="UTF-8"%>

<style>
    .tbbg1 { background: #dff0f8; }
    .tbbg2 { background: #ccff99; }
    .tbbg3 { background: #ffffcc; }
    .pushdwn { margin-top: 50px; }
    .cmtbg1 { background: pink; padding: 7px 0; }
    .cmtbg2 { background: lightgreen; padding: 7px 0; }
    .pushright { float: right; }
</style>

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
                    <h2>[날씨] 우산 안 갖고 나올 때마다 비가 오죠?</h2>
                    </th>
                </tr>
                <tr class="tbbg2">
                    <td style="width: 50%">Celeste</td>
                    <td class="text-right">2021-05-21 11:49:57 / 19 / 87</td>
                </tr>
                <tr class="tbbg3">
                    <td colspan="2">
                        <div><img src="/img/28FC8D8F-B0BC-4510-99F7-4FEC4BF06B9A_1_105_c.jpeg" class="img-fluid"></div>
                    </td>
                </tr>
                <tr><td colspan="2" class="tbbg4">
                    <td><i class="fas fa-file-archive"> homework.zip (123KB)</i></td></tr>
                <tr><td colspan="2" class="tbbg4">
                    <td><i class="fas fa-file-alt"> homework.txt (456KB)</i></td></tr>
                <tr><td colspan="2" class="tbbg4">
                    <td><i class="fas fa-file-image"> homework.png (789KB)</i></td></tr>
            </table>
        </div>

        <div class="row">
            <div class="col-5 offset-1">
            <button type="button" class="btn btn-warning text-white"><i class="bi bi-question-circle"></i> 수정하기</button>
            <button type="button" class="btn btn-danger"><i class="bi bi-x-circle-fill"></i> 삭제하기</button>
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

<!-- 로그인 폼 모달 -->
<div class="modal" id="loginfrm" tabindex="-1" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h3>로그인</h3>
                <button type="button" class="btn btn-light">닫기</button>
            </div>

            <div class="modal-body">
                <form name="loginfrm" id="loginfrm" method="post">
                    <div class="form-group row text-danger">
                        <label class="col-form-label col-4 text-right" for="userid">아이디</label>
                        <input type="text" name="userid" id="userid" class="form-control col-5 border-danger">
                    </div>
                    <div class="form-group row text-danger">
                        <label class="col-form-label col-4 text-right" for="passwd">비밀번호</label>
                        <input type="password" name="passwd" id="passwd" class="form-control col-5 border-danger">
                    </div>
                    <div class="form-group row">
                        <div class="col-4"></div>
                        <div class="form-check">
                        <input type="checkbox" class="form-check-input border-warning">
                        <label class="form-check-label text-warning">로그인 상태 유지</label>
                        </div>
                    </div>
                </form>
            </div>

            <div class="modal-footer justify-content-center">
                <button type="button" class="btn btn-danger">로그인</button>
                <button type="button" class="btn btn-warning">아이디/비밀번호 찾기</button>
            </div>
        </div>
    </div>
</div>

<!-- jQuery and Bootstrap Bundle (includes Popper) -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>