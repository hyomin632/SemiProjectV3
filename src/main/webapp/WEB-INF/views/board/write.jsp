<%@ page pageEncoding="UTF-8"%>

<div id="main" class="row">
	<script src="https://www.google.com/recaptcha/api.js"></script>
            <div>
                <i class="fas fa-comments fa-2x"> 자유 게시판</i>
                <hr>
            </div> <!-- 페이지 타이틀 -->

            <div class="row">
                <div class="col-5 offset-1">
                    <h3><i class="fas fa-plus-circle"> 새 글 쓰기</i></h3>
                </div>
                <div class="col-5 text-right">
                    <button type="button" class="btn btn-light"><i class="fas fa-list"> 목록으로</i></button>
                </div>
            </div>

            <div class="card card-body bg-light col-10 offset-1">
                <form name="boardfrm" id="boardfrm">
                    <div class="form-group row">
                        <label for="title" class="col-form-label col-2 text-right text-danger">제목</label>
                        <input type="text" name="title" id="title" class="form-control col-9 border-danger">
                    </div>
                    <div class="form-group row">
                        <label for="userid" class="col-form-label col-2 text-right text-danger">작성자</label>
                        <input type="text" name="userid" id="userid" class="form-control col-9 border-danger" readonly>
                    </div>
                    <div class="form-group row">
                        <label for="contents" class="col-form-label col-2 text-right text-danger">본문 내용</label>
                        <textarea id="contents" name="contents" rows="15" class="form-control col-9 border-danger"></textarea>
                    </div>
                    <div class="form-group row">
                        <label class="col-form-label col-2 text-right text-danger">자동 가입 방지</label>
                        <div class="g-recaptcha" data-sitekey="6LfYIwgbAAAAAJH66wTOE11GOtExqC-Svf_sATdq"></div>
					    <input type="hidden" id="g-recaptcha" name="g-recaptcha">
                    </div>
                    <div class="form-group row">
                        <hr class="col-10">
                        <div class="col-12 text-center">
                            <button type="button" class="btn btn-primary"><i class="fas fa-check-circle"></i> 입력완료</button>
                            <button type="button" class="btn btn-danger"><i class="fas fa-time-circle"></i> 다시 입력</button>
                        </div>
                    </div>
                </form>
            </div>
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
