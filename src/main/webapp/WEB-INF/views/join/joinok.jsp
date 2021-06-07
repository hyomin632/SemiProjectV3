<%@ page pageEncoding="UTF-8"%>

<div>
    <h2>회원가입 완료</h2>
    <small class="text-muted">
        안전하고 편리한 홈페이지 이용을 위해 회원님의 아이디와 비밀번호 관리에 주의해주시기 바랍니다.
    </small>
    <hr>
</div> <!-- 섹션 테이블 -->

<div class="jumbotron bg-info text-white col-10 offset-1">
    <h1>회원가입을 축하합니다!</h1>
    <p>게시판 글 작성, 쇼핑몰 이용 동의 등의 일부 서비스는 실명확인 후 이용하실 수 있습니다.<br> 실명확인 후에도 가입하신 아이디는 변경할 수 없습니다.</p>
    <hr>
    <p>회원가입 이후 아이디와 비밀번호로 일반회원으로 로그인하셔서 추가 인적사항 등을 등록해주시기 바랍니다.<br> Lorem Ipsum과 함께 즐거운 시간 되십시오.</p>
</div>

<div class="text-center">
    <button type="button" id="go2index" class="btn btn-success"><i class="fas fa-home"></i> 메인으로 이동</button>
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