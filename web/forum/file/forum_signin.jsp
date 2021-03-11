<%
    String nowTime=(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss")).format(new java.util.Date());
    String echoString = request.getParameter("echostr");
    String module="teach";
    if (echoString != null) {
        out.print(echoString); //骗过验证用
    } else {
        //以下变量改成自己公众平台的
        String appId="wxxxxxxxxxxxxxxx";
        String appSecret="16e92f75aedxxxxxxxxxxxxxxxxxxxxx";
        String wechatServerAddress="www.xxxx.com";
        String serverAddress="www.xxxxx.org";
        String serverPort="9090";
        String wechatId="gh_xxxxxxxxxxxx";
        String wechatName="XXXXXXXX";

        session.setAttribute("server_address",serverAddress);
        session.setAttribute("server_port",serverPort);
%>
<%@page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,java.text.*" import="java.util.*" import="java.io.*" import="dao.ylx_db,java.text.*"%>
<jsp:useBean id="WECHAT" class="wechat.WECHAT" scope="session" />
<!--<jsp:useBean id="TEACH" class="teach.TEACH" scope="session" />-->
<%@page import="org.json.JSONArray,org.json.JSONException,org.json.JSONObject"%>
<%
        boolean isWechatUrlInterface = true;
        //TEACH.setSession(session);//
        WECHAT.setSession(session);
        WECHAT.appId=appId;
        WECHAT.appSecret=appSecret;
        ylx_db wx_db = new ylx_db("ylxdb");
        String msgType = "";
        String title = "";
        String fromUser = "";
        String toUser = "";
        String picUrl = "";
        String content = "";
        String eventType ="";
        String mediaId = "";
        String thumbMediaId = "";
        String mediaFormat = "";
        String longitude = "";
        String latitude = "";
        String scale = "";
        String label = "";
        String register = "admin";
        String registerTime = (new SimpleDateFormat("yyyy-MM-dd HH:mm:ss")).format(new java.util.Date());
        // 接收XML数据
        BufferedReader br = new BufferedReader(new InputStreamReader((ServletInputStream) request.getInputStream()));
        String line = null;
        StringBuilder sb = new StringBuilder();
        while ((line = br.readLine()) != null) {
            line = new String(line.getBytes(), "UTF-8");
            sb.append(line);
        }
        String xmlData = sb.toString();
        if (xmlData.isEmpty()) {
            xmlData = request.getParameter("data");
        }
        //System.out.println("收到的数据是：" + xmlData);
        //// 取出发送内容，首先取出发送用户
        String xmlS = xmlData;
        int fromuser_s = xmlS.indexOf("<FromUserName><![CDATA[");
        int fromuser_e = xmlS.indexOf("]]></FromUserName>");
        fromUser = xmlS.substring(fromuser_s + 23, fromuser_e);
        // 取出目标用户
        int touser_s = xmlS.indexOf("<ToUserName><![CDATA[");
        int touser_e = xmlS.indexOf("]]></ToUserName>");
        toUser = xmlS.substring(touser_s + 21, touser_e);

        //赋值
        int msgType_s = xmlS.indexOf("<MsgType><![CDATA[");
        int msgType_e = xmlS.indexOf("]]></MsgType>");
        msgType = xmlS.substring(msgType_s + 18, msgType_e);
        String replyMsg = "您好，消息已收到，部分功能尚在开发中，请耐心等待，谢谢！";

 //       if (msgType.equals("image")) {
 //           int picUrl_s = xmlS.indexOf("<PicUrl><![CDATA[");
 //           int picUrl_e = xmlS.indexOf("]]></PicUrl>");
 //           picUrl = xmlS.substring(picUrl_s + 17, picUrl_e);
 //           replyMsg = "您好，图片消息已收到，谢谢您发送的图片！图片URL：" + picUrl;
 //       }
 //       if (msgType.equals("text")) {
 //           int content_s = xmlS.indexOf("<Content><![CDATA[");
 //           int content_e = xmlS.indexOf("]]></Content>");
  //          content = xmlS.substring(content_s + 18, content_e);
 //           replyMsg = "您好，您发送的消息已收到！";

  //      }
  //      if (msgType.equals("voice")) {
  //          int xml_s = xmlS.indexOf("<MediaId><![CDATA[");
  //          int xml_e = xmlS.indexOf("]]></MediaId>");
  //          mediaId = xmlS.substring(xml_s + 18, xml_e);
  //          xml_s = xmlS.indexOf("<Format><![CDATA[");
  //          xml_e = xmlS.indexOf("]]></Format>");
 //           mediaFormat = xmlS.substring(xml_s + 17, xml_e);
 //           replyMsg = "您好，语音消息已收到，谢谢您发送的语音消息！";
 //       }
 //       if (msgType.equals("video")) {
 //           int xml_s = xmlS.indexOf("<MediaId><![CDATA[");
 //           int xml_e = xmlS.indexOf("]]></MediaId>");
 //           mediaId = xmlS.substring(xml_s + 18, xml_e);
 //           xml_s = xmlS.indexOf("<ThumbMediaId><![CDATA[");
 //           xml_e = xmlS.indexOf("]]></ThumbMediaId>");
 //           thumbMediaId = xmlS.substring(xml_s + 23, xml_e);
  //          replyMsg = "您好，视频消息已收到，谢谢您发送的视频消息！";
 //       }
        if (msgType.equals("location")) {
            int xml_s = xmlS.indexOf("<Location_X>");
            int xml_e = xmlS.indexOf("</Location_X>");
            longitude = xmlS.substring(xml_s + 12, xml_e);
            xml_s = xmlS.indexOf("<Location_Y>");
            xml_e = xmlS.indexOf("</Location_Y>");
            latitude = xmlS.substring(xml_s + 12, xml_e);
            xml_s = xmlS.indexOf("<Scale>");
            xml_e = xmlS.indexOf("</Scale>");
            scale = xmlS.substring(xml_s + 7, xml_e);
            xml_s = xmlS.indexOf("<Label><![CDATA[");
            xml_e = xmlS.indexOf("]]></Label>");
            label = xmlS.substring(xml_s + 16, xml_e);
            replyMsg = "您好，定位消息已收到，谢谢您发送的定位消息！您发送的经纬度是：经度：" + longitude + "，纬度：" + latitude;
        }
        if (msgType.equals("event")) {
            int s = xmlS.indexOf("<Event><![CDATA[");
            int e = xmlS.indexOf("]]></Event>");
            eventType = xmlS.substring(s + 16, e);
            if(eventType.equals("SCAN")){
                String ticket=null;
                int xml_s = xmlS.indexOf("<Ticket><![CDATA[");
                int xml_e = xmlS.indexOf("]]></Ticket>");
                ticket = xmlS.substring(xml_s + 17, xml_e);
                String eventKey=null;
                xml_s = xmlS.indexOf("<EventKey><![CDATA[");
                xml_e = xmlS.indexOf("]]></EventKey>");
                eventKey = xmlS.substring(xml_s + 19, xml_e);
                String scanTime=(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss")).format(new java.util.Date());
                String sqlScan="update wechat_login set open_id='"+fromUser+"',scene_id='"+eventKey+"',status='done',scan_time='"+scanTime+"' where ticket='"+ticket+"'";
                wx_db.executeUpdate(sqlScan);
                replyMsg="您的验证已经通过，信息已经发送到微课百家，请在PC端继续操作！";
            }
   //         if(eventType.equals("CLICK")){
   //             s=xmlS.indexOf("<EventKey><![CDATA[");
   //             e=xmlS.indexOf("]]></EventKey>");
   //             String eventKey=xmlS.substring(s + 19, e);
   //             if(eventKey.equals("CLICK_ENTER_CLASSROOM")){
   //                 title="微课堂入口";
   //                 String description="欢迎进入微课堂，请请您点击文章进入！";
   //                 picUrl="http://"+serverAddress+":"+serverPort+"/ylxxt/assets/module/img/teach/micro-class.jpg";
   //                 String url="http://"+serverAddress+":"+serverPort+"/ylxxt/teach_manager_control_action?action=check_wechat_auth&open_id="+fromUser+"&from_user="+fromUser;
   //                 session.setAttribute("from_user",fromUser);
   //                 WECHAT.responseSingleNews(response,fromUser,toUser,title,description,picUrl,url);
   //             }
   //             if(eventKey.equals("CLICK_ENTER_CHATROOM")){
  //                  title="课堂互动聊天室入口";
  //                  String description="欢迎进入微课堂互动聊天室，请您请点击文章进入！";
  //                  picUrl="http://"+serverAddress+":"+serverPort+"/ylxxt/assets/module/img/teach/chatroom.jpg";
  //                  String url="http://"+serverAddress+":"+serverPort+"/ylxxt/teach/classroom/chatroom.jsp?open_id="+fromUser+"&from_user="+fromUser;
  //                  session.setAttribute("from_user",fromUser);
  //                  WECHAT.responseSingleNews(response,fromUser,toUser,title,description,picUrl,url);
   //             }
   //             if(eventKey.equals("CLICK_BARRAGE")){
   //                 String msg="您已切换弹幕状态";
   //                 if(TEACH.toggleBarrageStatus(fromUser)){msg=msg+"，弹幕已开启，请切换到输入消息状态输入消息发送！";}else{msg=msg+"，弹幕已关闭，您可以再次选择该菜单实现切换打开弹幕！";}
   //                 session.setAttribute("from_user",fromUser);
   //                 WECHAT.responseText(response,fromUser,toUser,"text",msg);
   //             }
    //            if(eventKey.equals("CLICK_ENTER_NOTEPAD")){
   //                 title="留言板入口";
   //                 String description="欢迎对系统留言，请您请点击本文章公告进入！";
   //                 picUrl="http://"+serverAddress+":"+serverPort+"/ylxxt/assets/module/img/teach/notepad.jpg";
  //                  String url="http://"+serverAddress+":"+serverPort+"/ylxxt/teach/notepad/record_add.jsp?open_id="+fromUser+"&from_user="+fromUser;
  //                  session.setAttribute("from_user",fromUser);
  //                  WECHAT.responseSingleNews(response,fromUser,toUser,title,description,picUrl,url);
  //              }
 //               if(eventKey.equals("CLICK_YLXXT")){
 //                   replyMsg=WECHAT.getReplyMsg(fromUser,msgType,eventType,eventKey);
 //                   title="管理平台";
  //                  String description="欢迎进入系统，请您请点击本文章进入！";
  //                  picUrl="http://"+serverAddress+":"+serverPort+"/ylxxt/assets/module/img/teach/glpt.jpg";
  //                  String url="http://"+serverAddress+":"+serverPort+"/ylxxt";
  //                  session.setAttribute("from_user",fromUser);
  //                  WECHAT.responseSingleNews(response,fromUser,toUser,title,description,picUrl,url);
  //              }
  //          }
  //          if(eventType.equals("subscribe")){
                //如果是关注，则加到用户列表里去
 //               String userInfo=WECHAT.getUserInfo(fromUser);
 //               JSONObject json=new JSONObject(userInfo);
 //               if(json.has("nickname")){
 //                   System.out.println("["+nowTime+"]"+json.getString("nickname")+"关注了！！！！！！");
  //                  String openId=fromUser;
   //                 String nickName=json.getString("nickname");
   //                 String sex=json.getString("sex");
   //                 String language=json.getString("language");
   //                 String city=json.getString("city");
   //                 String province=json.getString("province");
    //                String country=json.getString("country");
   //                 String headImgUrl=json.getString("headimgurl");
  //                  String subscribeTime=json.getString("subscribe_time");
  //                  String roleId="wechat_guest";
  //                  String userId=openId;
                    //添加进微信用户表，user_id留空，role_id是wechat_guest
  //                  String sqlUser="insert into wechat_user(wechat_id,subscribe,openid,nickname,sex,language,city,province,country,headimgurl,"+
  //                          "subscribe_time,remark,groupid,module,create_time)"+
  //                          " values('"+wechatId+"',1,'"+openId+"','"+nickName+"',"+sex+",'"+language+"','"+city+"','"+province+"','"+country+"','"+
  //                          headImgUrl+"','"+registerTime+"','',0,'"+module+"','"+registerTime+"')";
  //                  wx_db.executeUpdate("delete from wechat_user where openid='"+fromUser+"'");
   //                 wx_db.executeUpdate(sqlUser);
    //                if(session.getAttribute("user_id")==null){
   //                     session.setAttribute("user_id",userId);
   //                     session.setAttribute("user_name",nickName);
   //                 }
     //           }
                //然后回复关注
   //             title="欢迎加入！";
   //             String description="欢迎加入微课百家！";
   //             String picNewsUrl="http://"+serverAddress+":"+serverPort+"/ylxxt/assets/module/img/teach/welcome.jpg";
   //             String url="#";
   //             WECHAT.responseSingleNews(response,fromUser,toUser,title,description,picNewsUrl,url);
                //WECHAT.responseMultiNews(response,fromUser,toUser,3,title,description,picNewsUrl,url);
   //         }
   //         if(eventType.equals("unsubscribe")){
                //标记用户状态
   //             WECHAT.accessToken=null;
   //             WECHAT.expiresIn=0;
   //             wx_db.executeUpdate("update "+module+"_user set subscribe=0 where openid='"+fromUser+"'");
   //         }
   //     }
        //记录微信号
  //      session.setAttribute("open_id",fromUser);
        //发送回复
  //      if (isWechatUrlInterface) {
   //         out.print("<xml>");
   //         out.print("	<ToUserName><![CDATA[" + fromUser + "]]></ToUserName>");
  //          out.print("	<FromUserName><![CDATA[" + toUser + "]]></FromUserName>");
  //          out.print("	<CreateTime>" + new java.util.Date().getTime() + "</CreateTime>");
  //          out.print("	<MsgType><![CDATA[text]]></MsgType>");
  //          out.print("	<Content><![CDATA["+replyMsg+"]]></Content>");
  //          out.print("	<FuncFlag>0</FuncFlag>");
  //          out.print("</xml>");
  //         if (msgType.equals("text")) {
                //然后发给管理员
  //             WECHAT.appId=appId;
   //             WECHAT.appSecret=appSecret;
   //             //WECHAT.sendNoticeToManager(module,fromUser,toUser,picUrl,msgType,content,eventType);
   //         }
   //     } else {
   //         out.println(replyMsg);
            //System.out.println(replyMsg);
  //      }
        //保存进数据库
  //      String sql = "insert into wechat_message(wechat_id,msg_type,msg_source,content,pic_url,media_id,thumb_media_id,media_format,longitude,latitude,scale,label,from_user,to_user,register,register_time) values('"+wechatId+"'," + "'" + msgType + "','wechat','" + content + "','" + picUrl + "','" + mediaId + "','" + thumbMediaId + "','" + mediaFormat + "','" + longitude + "','" + latitude + "','" + scale + "','" + label + "','" + fromUser + "','" + toUser + "','" + register + "','" + registerTime + "')";
  //      wx_db.executeUpdate(sql);
  //      wx_db.close();
    }
%>