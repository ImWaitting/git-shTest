$(function () {
    let color=$(".colorbox");
    $("#close").click(function () {
        window.location.href="/background/login.jsp";
    });
    $("#loginInfo").hover(
        function (){
            $("#loginLogs").show();
        },
        function() {
            $("#loginLogs").hide();
        }
    )
    $("#color").hover(
        function (){
        $("#headColor").show();
        },
        function() {
        $("#headColor").hide();
        }
    );
    color.hover(
        function (){
            $(this).text("点击换肤");
        },
        function() {
            $(this).text("");
        }
    );
    color.click(function (){
        $("#head").css("background-color",$(this).css("background-color"));
    });
    $("#close").hover(
        function (){
            $("#closeInfo").show();
        },
        function() {
            $("#closeInfo").hide();
        }
    )
    //点击基础模块左侧列表实现基础模块页面切换功能,其余模块可以复制使用
    $('#basis a').click(function() {
        $('#basis a').removeClass('clicked');
        $(this).toggleClass('clicked'); // 切换当前链接的 'clicked' 类
    });
});