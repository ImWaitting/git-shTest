$(function (){
    let username = $("input[type=text]");
    let password = $("input[type=password]");
    $("#login_form").submit(function (event) {
        event.preventDefault(); // 阻止表单默认提交行为
        let result=true;
        if(!username.val()){
            alert("请输入登录账号");
            result=false;
        }
        if(username.val() && !password.val()){
            alert("请输入登录密码");
            result=false;
        }
        if(result){
            if($('#checked').is(':checked')){
                // 存储用户名和加密后的密码到localStorage
                localStorage.setItem('username', username.val());
                localStorage.setItem('password', password.val());
            }else {
                localStorage.removeItem('username');
                localStorage.removeItem('password');
            }
            window.location.href="/Role/login?account="+username.val()+"&passWord="+password.val();
        }

    });
    username.focus(function () {
        $("p").html("");
    });
    password.focus(function () {
        $("p").html("");
    });
    // 检查localStorage是否有存储的用户名和密码，并自动填充到表单中
    let storedUsername = localStorage.getItem('username');
    let storedPassword = localStorage.getItem('password');

    if (storedUsername && storedPassword) {
        username.val(storedUsername);
        password.val(storedPassword);
        $('#checked').prop('checked',true);
        // 由于密码是加密存储的，这里不自动填充密码字段
    }
});
