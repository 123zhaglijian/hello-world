<%@ page import="com.yeepay.g3.payplus.basic.constants.MerchantConfigMap" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>修改产品参数</title>
    <%@include file="/WEB-INF/pages/inc/misc.jsp" %>
    <link rel="stylesheet" type="text/css" href="${path}/dist/css/common.css">

    <style type="text/css">
        .qu-btn-code {
            right: 10px;
            width: 99px;
            height: 32px;
            padding: 0;
            font-size: 14px;
            background-color: transparent;
            border: solid 1px #658ff5;
            border-radius: 5px;
            color: #658ff5;
            line-height: 32px;
            text-align: center;
        }

        .again {
            color: #FFFFFF;
            background-color: #cccccc;
            border-color: #cccccc;
        }

        .error {
            color: red;
        }

        label {
            display: inline-block;
            max-width: 100%;
            margin-bottom: 5px;
            font-weight: 700;
            text-align: right;
        }
    </style>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

    <%@include file="/WEB-INF/pages/inc/header.jsp" %>
    <%@include file="/WEB-INF/pages/inc/sidebar.jsp" %>

    <div class="content-wrapper">
        <%@include file="/WEB-INF/pages/inc/content-header.jsp" %>

        <section class="content">
            <div class="row">
                <div class="col-xs-12">
                    <div class="nav-tabs-custom">
                        <div class="tab-content">
                            <div class="box box-warning">

                                <div class="box-body">
                                    <form action="<%=request.getContextPath()%>/app/channel/save_channel_msg" role="form"
                                          id="modifyForm" method="post">
                                        <div class="box-body table-responsive no-padding">
                                            <table class="table table-hover">
                                                    <tr>
                                                        <td>
                                                            <div class="form-group">
                                                                <label for="mobile"
                                                                       class="col-sm-2 control-label">产品编码</label>
                                                                <div class="col-sm-3">
                                                                    <span id="productCode" name="productCode">
                                                                       ${routerProviderProduct.productCode}
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div class="form-group">
                                                                <label for="mobile"
                                                                       class="col-sm-2 control-label">产品名称</label>
                                                                <div class="col-sm-3">
                                                                    <span id="productName" name="productName">
                                                                       ${routerProviderProduct.productName}
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div class="form-group">
                                                                <label for="mobile"
                                                                       class="col-sm-2 control-label">产品类型</label>
                                                                <div class="col-sm-3">
                                                                    <span id="productType" name="productType">
                                                                       <w:method value="${routerProviderProduct.productType}" en="com.yeepay.g3.app.payplus.portal.utils.QueryEnumUtil" method="payTool"></w:method>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div class="form-group">
                                                                <label for="mobile"
                                                                       class="col-sm-2 control-label">服务费方式</label>
                                                                <div class="col-sm-3">
                                                                    <span id="chargeType" name="chargeType">
                                                                   	 <w:method value="${routerProviderProduct.chargeType}" en="com.yeepay.g3.app.payplus.portal.utils.QueryEnumUtil" method="chargeType"></w:method>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div class="form-group">
                                                                <label for="mobile"
                                                                       class="col-sm-2 control-label">服务费比例</label>
                                                                <div class="col-sm-3">
                                                                    <span id="chargeRate" name="chargeRate">
                                                                       ${routerProviderProduct.chargeRate}
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div class="form-group">
                                                                <label for="mobile"
                                                                       class="col-sm-2 control-label">通道费率</label>
                                                                <div class="col-sm-3">
	                                                                 <input type="text" class="form-control" style="width: 300px"
	                                                                       name="<%=MerchantConfigMap.MerchantConfigFunctionKey.ALIPAY_APP_ID  %>"
	                                                                       value="${routerProviderProduct.feeRate}"
	                                                                 >
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
	                                                <tr>
	                                                    <td>
	                                                        <div class="form-group">
	                                                            <label for="mobile"
	                                                                   class="col-sm-2 control-label">合作者身份(PID)</label>
	                                                            <div class="col-sm-3">
	                                                            <input type="text" class="form-control" style="width: 300px"
	                                                                   name="<%=MerchantConfigMap.MerchantConfigFunctionKey.ALIPAY_APP_ID  %>"
	                                                                   value="${routerProviderProduct.productMerchantId}"
	                                                            >
	                                                            </div>
	                                                        </div>
	                                                    </td>
	                                                </tr>
	                                                <tr>
	                                                        <td>
	                                                            <div class="form-group">
	                                                                <label for="mobile"
	                                                                       class="col-sm-2 control-label">APPID</label>
	                                                                <div class="col-sm-3">
	                                                                <input type="text" class="form-control" style="width: 300px"
	                                                                       name="<%=MerchantConfigMap.MerchantConfigFunctionKey.ALIPAY_APP_ID  %>"
	                                                                       value="${routerProviderProduct.appId}"
	                                                                >
	                                                                </div>
	                                                            </div>
	                                                        </td>
	                                                </tr>
	                                                <tr>
                                                    <tr>
                                                        <td>
                                                            <div class="form-group">
                                                                <label for="mobile" class="col-sm-2 control-label">支付宝RSA公钥</label>
                                                                <div class="col-sm-3">
                                                                    <textarea type="text" class="form-control" id="alipay_rsa_public_key"
                                                                              name="alipay_rsa_public_key" style="height: 110px; width: 300px"
                                                                              value="${routerProviderProduct.publicKey}" >${routerProviderProduct.publicKey}</textarea>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div class="form-group">
                                                                <label for="mobile" class="col-sm-2 control-label">商户RSA私钥</label>
                                                                <div class="col-sm-3">
                                                                    <textarea type="text" class="form-control" id="alipay_merchant_rsa_private_key"
                                                                              name="alipay_merchant_rsa_private_key" style="height: 110px; width: 300px"
                                                                              value="${routerProviderProduct.privateKey}" >${routerProviderProduct.privateKey}</textarea>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div class="form-group">
                                                                <label for="mobile" class="col-sm-2 control-label">渠道产品状态</label>
                                                                <div class="col-sm-3">
																    <span class="select-box">
																    <select class="select" size="1" name="province" id="province" style="width: 300px;">
																    <option value="" selected>选择状态</option>
																    <c:forEach items="${provinceMap}" var="province">
																    <option value="${province.value}" data-value="${province.key}">${province.value}</option>
																    </c:forEach>
																    </select>
																    </span>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div class="form-group">
                                                                <label for="mobile" class="col-sm-2 control-label">备注</label>
                                                                <div class="col-sm-3">
                                                                    <textarea type="text" class="form-control" id="remark" style="height: 110px; width: 300px"
                                                                              name="<%=MerchantConfigMap.MerchantConfigFunctionKey.ALIPAY_MERCHANT_RSA_PRIVATE_KEY   %>"
                                                                              value="" ></textarea>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                <input name="functionKey" value="${functionKey}" type="hidden">
                                                <input name="isUpdateFlag" value="false" type="hidden">
                                                <tr>
                                                    <td>
                                                        <div class="box-footer">
                                                            <div class="col-sm-5" style="text-align:center">
                                                                <button type="submit" class="btn btn-primary"
                                                                        data-toggle="modal" >
                                                                    保存
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>

                                            </table>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <%@include file="/WEB-INF/pages/inc/footer.jsp" %>
</div>

<script type="text/javascript">
    $(function () {

        $("#modifyForm").validate({
            rules: {
                alipay_partner_pid: {
                    required: true,
                },
                alipay_security_key: {
                    required: true,
                },
                alipay_rsa_public_key: {
                    required: true,
                },
                alipay_merchant_rsa_private_key: {
                    required: true,
                },
                alipay_app_id:{
                    required: true,
                }
            },
            messages: {
                alipay_partner_pid: {
                    required: "必填",
                },
                alipay_security_key: {
                    required: "必填",
                },
                alipay_rsa_public_key: {
                    required: "必填",
                },
                alipay_merchant_rsa_private_key: {
                    required: "必填",
                },
                alipay_app_id:{
                    required: "必填",
                }

            },
            submitHandler: function(form){
                $.ajax({
                    url: '${path}/app/channel/save_alipay_channel_msg',
                    type: "POST",
                    data: $('#modifyForm').serialize(),
                    dataType: "JSON",
                    success: function (data) {
                        if (data.status == "success") {
                            window.location.href = "<%=request.getContextPath()%>/app/channel/show_channel_list"
                        }else{
                            alert(data.status);
                        }
                    },
                    error: function () {
                        $('#alert_modal').modal('show');
                        $('#alert_msg').html("系统异常,请重试");
                    }
                });
            }
        });

    });

</script>
</body>
</html>
