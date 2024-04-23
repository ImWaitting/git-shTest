$(function(){
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
            url:'getPageLoginLogs',
            type:'post',
            data:{
                'pageNo':1,
                'phone':phone
            },
            dataType:'text',
            success:function (data){
                location.href="/background/loginLogs.jsp";
            }
        })
    })

    //删除角色
    $(".deleteLoginLogs").click(function (){
        if(!confirm("确定删除吗?")){
            return;
        }
        //获取角色id
        var id=$(this).parent().parent().find("td").eq(1).html();
        $.ajax({
            url:'deleteLogionLogs',
            type:'post',
            data:{
                "id":id
            },
            dataType:'text',
            success:function (data){
                if(data==1){
                    alert("删除成功！");
                    location.href="pageLoginLogs";
                }else{
                    alert("删除失败！");
                    location.href="pageLoginLogs";
                }
            }
        })
    })

});