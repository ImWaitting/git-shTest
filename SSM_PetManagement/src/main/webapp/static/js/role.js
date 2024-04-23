$(function() {
    //重置
    $(".clean").click(function(){
        $("#phone").val("");
    })
    //全选
    $("#checkedAll").change(function() {
        if($(this).prop("checked")){
            $(".check-box").prop("checked",true);
        }else {
            $(".check-box").prop("checked",false);
        }
    })

    //根据条件查询
    $("#selectPhone").click(function(){
        var phone = $("#phone").val().trim();
        $.ajax({
            url:'/Role/getRolePhone',
            type:'post',
            data:{
                'pageNo':1,
                'phone':phone
            },
            dataType:'text',
            success:function (data){
                location.href="/background/role.jsp";
            }
        })
    })

    //添加角色弹窗显示隐藏
    $(".add").click(function(){
        $("#addbutton").show();
    })

    //添加角色弹窗显示隐藏
    $(".but2").click(function(){
        $("#addbutton").css("display","none");
    })

    //新增角色
    $("#but1").click(function (){
        var userId = $("#userId").val().trim();
        //姓名判空
        var name = $("#name").val().trim();
        if(name===null || name===""){
            alert("姓名不能为空！");
            return;
        }
        //判断邮箱是否正确
        var email = $("#email").val().trim();
        if(email===null || email===""){
            alert("邮箱不能为空！");
            return;
        }
        var regEmail=/^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
        if(!regEmail.test(email)){
            alert("邮箱格式填写不正确，例如：xxxxxxx@163.com");
            return;
        }
        //手机号判断是否正确
        var mobilePhone = $("#mobilePhone").val().trim();
        if(mobilePhone===null || mobilePhone===""){
            alert("手机号不能为空！");
            return;
        }
        var regMobilePhone=/^1[3-9]\d{9}$/;
        if(!regMobilePhone.test(mobilePhone)){
            alert("手机号格式填写不正确，例如：17773391523");
            return;
        }
        var status = $("#status").val().trim();
        var role = $("#role").val().trim();
        //账号判空
        var account = $("#account").val().trim();
        if(account===null || account===""){
            alert("账号不能为空！");
            return;
        }
        //登录密码判空
        var passWord = $("#passWord").val().trim();
        if(passWord===null || passWord===""){
            alert("登录密码不能为空！");
            return;
        }
        //确认密码判空
        var passWord1 = $("#passWord1").val().trim();
        if(passWord1===null || passWord1===""){
            alert("确认密码不能为空！");
            return;
        }
        //密码是否一致
        if(passWord!=passWord1){
            alert("密码不一致！");
            return;
        }

        $.ajax({
            url:'/Role/insertRole',
            type:'post',
            data:{
                "userId":userId,
                "name":name,
                "email":email,
                "mobilePhone":mobilePhone,
                "status":status,
                "role":role,
                "account":account,
                "passWord":passWord
            },
            dataType:'text',
            success:function (data){
                if(data==1){
                    alert("新增成功！");
                    $("#addbutton").css("display","none");
                    location.href="/Role/pageRole";
                }else{
                    alert("新增失败！");
                    $("#addbutton").css("display","none");
                    location.href="/Role/pageRole";
                }
            }
        })
    })

    //删除角色
    $(".deleteRole").click(function (){
        if(!confirm("确定删除吗?")){
            return;
        }
        //获取角色id
        var id=$(this).parent().parent().find("td").eq(1).html();
        $.ajax({
            url:'/Role/deleteRole',
            type:'post',
            data:{
                "id":id
            },
            dataType:'text',
            success:function (data){
                if(data==1){
                    alert("删除成功！");
                    location.href="/Role/pageRole";
                }else{
                    alert("删除失败！");
                    location.href="/Role/pageRole";
                }
            }
        })
    })

    //编辑角色弹窗显示隐藏
    $(".up2").click(function(){
        $("#updatebutton").css("display","none");
    })

    //修改弹窗赋值
    $(".update").click(function(){
        //获取角色id
        var userIds=$(this).parent().parent().find("td").eq(1).html();
        //获取角色姓名
        var names=$(this).parent().parent().find("td").eq(2).html();
        //获取角色邮箱
        var emails=$(this).parent().parent().find("td").eq(3).html();
        //获取角色手机号
        var mobilePhones=$(this).parent().parent().find("td").eq(4).html();
        //获取角色账号
        var accounts=$(this).parent().parent().find("td").eq(8).html();
        //获取角色密码
        var passWords=$(this).parent().parent().find("td").eq(9).html();
        $("#userIds").val(userIds);
        $("#names").val(names);
        $("#emails").val(emails);
        $("#mobilePhones").val(mobilePhones);
        $("#accounts").val(accounts);
        $("#passWords").val(passWords);
        $("#updatebutton").show();
    })

    //修改角色
    $(".up1").click(function(){
        var userIds = $("#userIds").val().trim();
        //姓名判空
        var names = $("#names").val().trim();
        if(names===null || names===""){
            alert("姓名不能为空！");
            return;
        }
        //判断邮箱是否正确
        var emails = $("#emails").val().trim();
        if(emails===null || emails===""){
            alert("邮箱不能为空！");
            return;
        }
        var regEmails=/^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
        if(!regEmails.test(emails)){
            alert("邮箱格式填写不正确，例如：xxxxxxx@163.com");
            return;
        }
        //手机号判断是否正确
        var mobilePhones = $("#mobilePhones").val().trim();
        if(mobilePhones===null || mobilePhones===""){
            alert("手机号不能为空！");
            return;
        }
        var regMobilePhones=/^1[3-9]\d{9}$/;
        if(!regMobilePhones.test(mobilePhones)){
            alert("手机号格式填写不正确，例如：17773391523");
            return;
        }
        var statuss = $("#statuss").val().trim();
        var roles = $("#roles").val().trim();
        //账号判空
        var accounts = $("#accounts").val().trim();
        if(accounts===null || accounts===""){
            alert("账号不能为空！");
            return;
        }
        //登录密码判空
        var passWords = $("#passWords").val().trim();
        if(passWords===null || passWords===""){
            alert("登录密码不能为空！");
            return;
        }

        $.ajax({
            url:'/Role/updateRole',
            type:'post',
            data:{
                "userId":userIds,
                "name":names,
                "email":emails,
                "mobilePhone":mobilePhones,
                "status":statuss,
                "role":roles,
                "account":accounts,
                "passWord":passWords
            },
            dataType:'text',
            success:function (data){
                if(data==1){
                    alert("修改成功！");
                    $("#updatebutton").css("display","none");
                    location.href="pageRole";
                }else{
                    alert("修改失败！");
                    $("#updatebutton").css("display","none");
                    location.href="pageRole";
                }
            }
        })
    })
});