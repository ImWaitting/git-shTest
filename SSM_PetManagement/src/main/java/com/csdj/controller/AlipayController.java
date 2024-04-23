package com.csdj.controller;

import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.internal.util.AlipaySignature;
import com.alipay.api.request.AlipayTradePagePayRequest;
import com.csdj.pojo.Product;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


import java.io.FileWriter;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;

@Controller
@RequestMapping("/alipay")
public class AlipayController{
    private  final String ALIPAY_PUBLIC_KEY ="MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAgNZDthzzJx8v+jviR9fTC99ObduMqAbtlKM6pYl4TJtpMi9GTjXITfeY7hJq5l/nr1alvz4F6RtBKI1Yt5mKhx0bUts1K2hzolEC/1F16LCyqdASwNaUChFv9uCxbZNASVTJGrrjbKo/VQEwYc+utBemH95reUImNXd4F1F+mPoZHy1TRw/36IMmf6JkHbh7WYiGjBvM+m/Dx2EBD5FpG0eaHm1+EDRadIXM1x73dvi1ZR8x6KX9ysEd5vJskkY6o9R6prmSlz/K6Mbe/X2LOVOArYHSgK8vAJZTLZaUmdwLMZAj3K2SePvp0iAWWJdlpu9zhvNKmHH8Lpp9n0RNQwIDAQAB";

    // 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
    public final String APP_ID = "9021000136623087";

    // 商户私钥，您的PKCS8格式RSA2私钥，在本地计算机上存储
    public final String APP_PRIVATE_KEY = "MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQCC9D+dtZGyeZJI8JKI/qvIvWRGkeTp2MmPCLzKuB6lCNyONIcWX95JdbSgTKcnLzRTJ8ZEbkRGJHNFBmZB9PypN4lDqkr/jwuAlAU9GuB1U89vkzYsy7kZxopFiqO0L4EirGeGiSy6BAKiV3Qf5GSalJzRB7OHQjvweNYgN45RJ1GSxH+7LwbZbjdEm4aF45m7I+x+Dc/MMo443ukyh4tR+H6Gqb4zJ3hcykm2c+iGJ4auK6hYlOGdWYvRCN0LbUme3rTtnbbFcNgXnMLQk6+Ygly+LorJ0w6/19N2eLYoxUgfCZW8sWkfL46RFmIYmoDLXI4nfzy6gaehckekA8BLAgMBAAECggEAIIpK6Ih+rMeyxvcoomwOCbKuIS8Nn+Ijq6wzJXh8/OtnytpYmwG1fbGG8bI6cu0y5lri1IxF4Nwb3JILhOY4hl/rdunw+vHznL6rUpTEI8Nwrzv4YUc6NqJ0J3Wc2iBXyWLn0rFxcMOgV/C9RVN+gD7ffL2aKckWldmg8556ecWdYJFLVo2ypNzxAGoSp1XYqMPvIe2u5n8sQFuPPdKwn2ehWEPuT7+Nfnm7ti+axCiVUAupcdmt92GY3vft+luaJyulzl4c8WzfQZyft7ioFdOIbb5z44eu7FfaLJuNkJASoN9/X1ayMo1RGQPPKA5E5rAbmPPHG+TTl3qyGOE82QKBgQC84GgmzDogVhpTAswxRjRR0w0rjMCKZHmXIZjW2aqbLFCt4Or5IY/cj0GTty1XDaW5LJwZQjmNgqmTKu2oOVRF7Rs2ylUevBiyF/aNsG2W/rgj9PwKoP4OdFOgAAmmKUpcyj20+IkuAHtbn1EnvrrD6ruvNVJ8YN7oO3I9j8yJTwKBgQCxfizv+TScRj8QlPOlJaUABnNYlGpTCBS6CrdnQq7nJ11ynLOtmpQNVQloU3ODL1s//CFCgdkbZrtZPUHQwioL/4SQ5DtiXCj+VFm1eU6D5dVhBlWL1vgUvwvPKXEOZIiv3QYZ2RxeoKMh8iYvpduSm2nEkSEiIjVEGg1oc+XiRQKBgDS9hNewl1qIMHmVgmcP73QZtse+WdVLERi+bOsxhI4n5a9n6rT+RimUZv9UWvi/+tKmPkBfWarGHYvWpN4ghAOynbLC9NnMNCkmv9X4ueE75zdDJU3ifo6StPcsi4U2amlWn7x02flacRe4ePTcMVKbrSTTguDwO84lK1U9XiPJAoGBAJpC3k2G2rnDt8Xynzt2V0yJTrC69RnLGTCEZdgiNZ8DMI2PMf59LZXUxYNdnDR08SrQOBv0fLv68nNh8RS93AtnfVDse8xF6v74UquNjbbHB0f3WFxcbmqhjGL1UqQ+rimiwE2wy55WoNG9AoFA9nAaELfdpt1iu8a/mc2hhTe9AoGBALxMtEFn0oxKqoZjxZDs/c0ZujaTX2lrRAmjTmuWxGw1d5DD/FX1SW/AjNCeLfWDPRWLe+qf+ifh67tGZU7Hyr5rSVS+VuQFg2Fw1OUD+AnnnHA/qI4EzEiOLu2gnkAx7o3XJHMwdAH742QP6Ah7Il4ntPfot0tka0/Xk5trTItc";
    // 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    public final String NOTIFY_URL = "http://localhost:8888/animals/alipay/alipayNotifyNotice";

    // 定义支付成功后的返回页面，可以写请求
    public final String RETURN_URL = "http://localhost:8080/product1";

    // 签名方式
    public final String SIGN_TYPE = "RSA2";

    // 字符编码格式
    public final String CHARSET = "utf-8";

    // 支付宝网关
    public final String GATEWAY_URL = "https://openapi-sandbox.dl.alipaydev.com/gateway.do";
    //
    private final String FORMAT = "JSON";
    // 支付宝网关
    public final String log_path = "C:\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    @RequestMapping("/alipay")
    public void alipay(HttpServletResponse httpResponse,HttpSession session) throws IOException {

        //实例化客户端,填入所需参数
        AlipayClient alipayClient = new DefaultAlipayClient(GATEWAY_URL, APP_ID, APP_PRIVATE_KEY, FORMAT, CHARSET, ALIPAY_PUBLIC_KEY, SIGN_TYPE);
        AlipayTradePagePayRequest request = new AlipayTradePagePayRequest();
        //在公共参数中设置回跳和通知地址
        request.setReturnUrl(RETURN_URL);
        request.setNotifyUrl(NOTIFY_URL);
        //商户订单号，商户网站订单系统中唯一订单号，必填
        //生成随机Id
        String outTradeNo = UUID.randomUUID().toString();
        //付款金额，必填
        Product product =(Product) session.getAttribute("products");
        System.out.println(product);
        Integer price = product.getPrice();
        String totalAmount =Integer.toString(price);
        //订单名称，必填
        String subject = "宠物支付";
        //商品描述，可空
        String body = "宠物";
        request.setBizContent("{\"out_trade_no\":\""+ outTradeNo +"\","
                + "\"total_amount\":\""+ totalAmount +"\","
                + "\"subject\":\""+ subject +"\","
                + "\"body\":\""+ body +"\","
                + "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"}");
        String form = "";
        try {
            form = alipayClient.pageExecute(request).getBody(); // 调用SDK生成表单
        } catch (AlipayApiException e) {
            e.printStackTrace();
        }
        httpResponse.setContentType("text/html;charset=" + CHARSET);
        httpResponse.getWriter().write(form);// 直接将完整的表单html输出到页面
        httpResponse.getWriter().flush();
        httpResponse.getWriter().close();
    }


    @RequestMapping(value = "/alipayReturnNotice", method = RequestMethod.GET)
    @ResponseBody
    public String returnUrl(HttpServletRequest request, HttpServletResponse response)
            throws IOException, AlipayApiException {
        /*System.out.println("=================================同步回调=====================================");*/

        // 获取支付宝GET过来反馈信息
        Map<String, String> params = new HashMap<String, String>();
        Map<String, String[]> requestParams = request.getParameterMap();
        for (Iterator<String> iter = requestParams.keySet().iterator(); iter.hasNext();) {
            String name = (String) iter.next();
            String[] values = (String[]) requestParams.get(name);
            String valueStr = "";
            for (int i = 0; i < values.length; i++) {
                valueStr = (i == values.length - 1) ? valueStr + values[i] : valueStr + values[i] + ",";
            }
            // 乱码解决，这段代码在出现乱码时使用
            valueStr = new String(valueStr.getBytes("utf-8"), "utf-8");
            params.put(name, valueStr);
        }

        //查看参数都有哪些
        /*System.out.println(params);*/
        // 调用SDK验证签名
        boolean signVerified = AlipaySignature.rsaCheckV1(params, ALIPAY_PUBLIC_KEY, CHARSET, SIGN_TYPE);
        //验证签名通过
        if(signVerified){
            // 商户订单号
            String outTradeNo = new String(request.getParameter("out_trade_no").getBytes("ISO-8859-1"), "UTF-8");

            // 支付宝交易号
            String tradeNo = new String(request.getParameter("trade_no").getBytes("ISO-8859-1"), "UTF-8");

            // 付款金额
            String totalAmount = new String(request.getParameter("total_amount").getBytes("ISO-8859-1"), "UTF-8");

            System.out.println("商户订单号="+outTradeNo);
            System.out.println("支付宝交易号="+tradeNo);
            System.out.println("付款金额="+totalAmount);
            //跳转付款成功页面
            return "ok";
        }else{
            //跳转付款失败页面
            return "no";
        }
    }


    /**
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public  void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

