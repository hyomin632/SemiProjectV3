// list
$('#newpdsbtn').on('click', function () {
    location.href = '/pds/write';
});

// write
$('#newpds').on('click', function () {
    if ($('#title').val() == '')
        alert('제목을 입력하세요!');
    else if ($('#contents').val() == '')
        alert('내용을 입력하세요!');
    else if (grecaptcha.getResponse() == '')
        alert('자동 기입 방지를 확인하세요!');
    else {
        const frm = $('#pdsfrm')
        frm.attr('method', 'post');
        frm.attr('action', '/pds/write');
        frm.submit();
    }
});

