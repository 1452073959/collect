<div class="box box-info">
    <div class="box-header with-border">
        <h3 class="box-title">提现申请详情：</h3>

    </div>
    <div class="box-body">
        <table class="table table-bordered">
            <tbody>
            <tr>
                <td>用户昵称：</td>
                <td>{{$money->user->nickname}}</td>
                <td>申请时间：</td>
                <td>{{$money->created_at}}</td>
            </tr>
            <tr>
                <td>真实姓名：</td>
                <td>{{ $money->name }}</td>
                <td>联系电话</td>
                <td>{{$money->phone}}</td>

            </tr>
            <tr>
                <td >发卡行</td>
                <td >{{$money->bank}}</td>
                <td>银行卡号：</td>
                <td>{{$money->card}}</td>

            </tr>


            <tr>
                <td>申请金额：</td>
                <td colspan="3">￥{{$money->money}}</td>
            </tr>
            <!-- 订单发货开始 -->
            <!-- 如果订单未发货，展示发货表单 -->
            @if($money->status == 1)
                <tr>
                    <td colspan="4">
                        <form  class="form-inline" id="myform">
                            <input type="hidden" name="id" value="{{$money->id}}">
                            <button type="button" class="btn btn-success" id="ship-btn" >拨款</button>
                        </form>
                    </td>
                </tr>
            @else
                <tr>
                    <td>提现状态：</td>
                    <td>已拨款</td>
                    <td>拨款时间</td>
                    <td>{{$money->updated_at}}</td>
                </tr>
            @endif


            </tbody>
        </table>


    </div>
</div>
<script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
<script>


    $("#ship-btn").click(function () {
        $.ajax({
            type:"post",
            url:"/api/moneywithdraw",
            data:$("#myform").serialize(),//这里data传递过去的是序列化以后的字符串
            success:function(data){
                layer.msg(data.data);
                window.location.reload();
            }
        });
    });
</script>
