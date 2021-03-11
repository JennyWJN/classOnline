package xm07.dao;

/**
 * Created by NightYuan on 2018/5/31.
 */
import dao.ylx_db;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by NightYuan on 2018/5/28.
 */
public class TeaworkDao {
    public JSONObject getRecord(Teawork query) throws SQLException, IOException, JSONException {
        String tableName="xm07_teawork";
        //开始查询数据库
        String resultMsg="ok";
        int resultCode=0;
        List jsonList = new ArrayList();
        try {
            ylx_db query_db = new ylx_db(query.getDbName());
            //构造sql语句，根据传递过来的查询条件参数
            String sql="";
            int count=0;
            query.setTableName(tableName);
            sql=createGetRecordSql(query);
            ResultSet rs = query_db.executeQuery(sql);
            while (rs.next()) {
                List list = new ArrayList();
                list.add(rs.getString("id"));
                list.add(rs.getString("work_id"));
                list.add(rs.getString("work_content"));
                list.add(rs.getString("work_count"));
                list.add(rs.getString("limit_time"));
                list.add(rs.getString("create_time"));
                list.add(rs.getString("user_id"));
                list.add(rs.getString("creator"));
                list.add(rs.getString("user_name"));
                if(query.getUserId()!=null && query.getUserId().equals(rs.getString("user_id"))){
                    list.add("1");
                }else{
                    list.add("0");
                }
                list.add(count);
                count=count+1;	//做上下记录导航用
                jsonList.add(list);
            }
            rs.close();
            query_db.close();
        } catch (SQLException sqlexception) {
            sqlexception.printStackTrace();
            resultCode=10;
            resultMsg="查询数据库出现错误！"+sqlexception.getMessage();
        }
        //////////数据库查询完毕，得到了json数组jsonList//////////
        //jsonList.clear();
        //下面开始构建返回的json
        JSONObject jsonObj=new JSONObject();
        jsonObj.put("aaData",jsonList);
        jsonObj.put("result_msg",resultMsg);//如果发生错误就设置成"error"等
        jsonObj.put("result_code",resultCode);//返回0表示正常，不等于0就表示有错误产生，错误代码
        return jsonObj;
    }
    public JSONObject modifyRecord(Teawork file) throws JSONException{
        //String action,String dbName,String id,String title,String content,String creator,String createTime
        String resultMsg="ok";
        int resultCode=0;
        List jsonList = new ArrayList();
        try {
            ylx_db query_db = new ylx_db(file.getDbName());
            ylx_db query_db2 = new ylx_db(file.getDbName());
            //构造sql语句，根据传递过来的查询条件参数
            String tableName="xm07_teawork";
            String sql="update "+tableName+" set work_id='"+file.getWorkid()+"',work_content='"+file.getWorkcontent()+"',work_count='"+file.getWorkcount()+"',limit_time='"+file.getLimitTime()+"',create_time='"+file.getCreateTime()+"' where id="+file.getId();
            String sql2="update xm07_stuwork set work_id='"+file.getWorkid()+"' where work="+file.getId();
            query_db2.executeUpdate(sql2);
            query_db.executeUpdate(sql);
            sql="select * from "+tableName+" order by create_time desc";
            ResultSet rs = query_db.executeQuery(sql);
            while (rs.next()) {
                List list = new ArrayList();
                list.add(rs.getString("id"));
                list.add(rs.getString("work_content"));
                jsonList.add(list);
            }
            rs.close();
            query_db.close();
        } catch (SQLException sqlexception) {
            sqlexception.printStackTrace();
            resultCode=10;
            resultMsg="查询数据库出现错误！"+sqlexception.getMessage();
        }
        //下面开始构建返回的json
        JSONObject jsonObj=new JSONObject();
        jsonObj.put("aaData",jsonList);
        jsonObj.put("action",file.getAction());
        jsonObj.put("result_msg",resultMsg);//如果发生错误就设置成"error"等
        jsonObj.put("result_code",resultCode);//返回0表示正常，不等于0就表示有错误产生，错误代码
        return jsonObj;
    }
    public JSONObject getRecordById(String action,String dbName,String id) throws JSONException{
        String resultMsg="ok";
        int resultCode=0;
        List jsonList = new ArrayList();
        try {
            ylx_db query_db = new ylx_db(dbName);
            //构造sql语句，根据传递过来的查询条件参数
            String tableName="xm07_teawork";
            String sql="select * from "+tableName+" where id="+id+" order by create_time desc";
            ResultSet rs = query_db.executeQuery(sql);
            while (rs.next()) {
                List list = new ArrayList();
                list.add(rs.getString("id"));
                list.add(rs.getString("work_content"));
                jsonList.add(list);
            }
            rs.close();
            query_db.close();
        } catch (SQLException sqlexception) {
            sqlexception.printStackTrace();
            resultCode=10;
            resultMsg="查询数据库出现错误！"+sqlexception.getMessage();
        }
        //下面开始构建返回的json
        JSONObject jsonObj=new JSONObject();
        jsonObj.put("aaData",jsonList);
        jsonObj.put("action",action);
        jsonObj.put("result_msg",resultMsg);//如果发生错误就设置成"error"等
        jsonObj.put("result_code",resultCode);//返回0表示正常，不等于0就表示有错误产生，错误代码
        return jsonObj;
    }
    public JSONObject addRecord(Teawork file) throws JSONException, SQLException{
        String resultMsg="ok";
        int resultCode=0;
        List jsonList = new ArrayList();
        ylx_db query_db = new ylx_db(file.getDbName());
        //构造sql语句，根据传递过来的查询条件参数
        String tableName="xm07_teawork";
        String sql="insert into "+tableName+"(parent_id,user_id,work_id,work_content,work_count,limit_time,user_name,creator,create_time) values('"+file.getParentId()+"','"+file.getUserId()+"','"+file.getWorkid()+
                "','"+file.getWorkcontent()+"','"+file.getWorkcount()+"','"+file.getLimitTime()+"','"+file.getUserName()+"','"+file.getCreator()+"','"+file.getCreateTime()+"')";
        query_db.executeUpdate(sql);
        query_db.close();
        //下面开始构建返回的json
        JSONObject jsonObj=new JSONObject();
        jsonObj.put("aaData",jsonList);
        jsonObj.put("action",file.getAction());
        jsonObj.put("result_msg",resultMsg);//如果发生错误就设置成"error"等
        jsonObj.put("result_code",resultCode);//返回0表示正常，不等于0就表示有错误产生，错误代码
        return jsonObj;
    }
    public JSONObject deleteRecord(String action,String dbName,String[] ids,String creator,String createTime) throws JSONException, SQLException{
        String tableName="xm07_teawork";
        String resultMsg="ok";
        int resultCode=0;
        List jsonList = new ArrayList();
        ylx_db query_db = new ylx_db(dbName);
        //构造sql语句，根据传递过来的查询条件参数
        for(int i=0;i<ids.length;i++){
            String sql="delete from "+tableName+" where id="+ids[i];
            query_db.executeUpdate(sql);
        }
        query_db.close();
        //下面开始构建返回的json
        JSONObject jsonObj=new JSONObject();
        jsonObj.put("aaData",jsonList);
        jsonObj.put("action",action);
        jsonObj.put("result_msg",resultMsg);//如果发生错误就设置成"error"等
        jsonObj.put("result_code",resultCode);//返回0表示正常，不等于0就表示有错误产生，错误代码
        return jsonObj;
    }
    public JSONObject setRecordTop(String action,String dbName,String type,String userId,String id) throws JSONException, SQLException{
        String tableName="xm07_teawork";
        String resultMsg="ok";
        int resultCode=0;
        List jsonList = new ArrayList();
        ylx_db query_db = new ylx_db(dbName);
        ylx_db update_db = new ylx_db(dbName);
        //构造sql语句，根据传递过来的查询条件参数
        String sql="select max(priority) as priority from xm07_teawork where user_id='"+userId+"'";
        int priority=0;
        ResultSet rs=query_db.executeQuery(sql);
        if(rs.next()){
            priority=rs.getInt("priority");
        }
        query_db.close();
        update_db.executeUpdate("update xm07_teawork set priority="+(priority+1)+" where id="+id);
        update_db.close();
        //下面开始构建返回的json
        JSONObject jsonObj=new JSONObject();
        jsonObj.put("aaData",jsonList);
        jsonObj.put("action",action);
        jsonObj.put("result_msg",resultMsg);//如果发生错误就设置成"error"等
        jsonObj.put("result_code",resultCode);//返回0表示正常，不等于0就表示有错误产生，错误代码
        return jsonObj;
    }
    /*
     * 功能：构造历史记录查询的sql语句,type=all查询所有，type=id查询某个记录，余下按照条件设置查询
     */
    private String createGetRecordSql(Teawork query){
        String sql="";
        String where="";
        if(query.getId()!=null && !query.getId().equals("null")){
            where="where id="+query.getId();
        }
        if(query.getWorkid()!=null && !query.getWorkid().equals("null") && !query.getWorkid().isEmpty()){
            if(!where.isEmpty()){
                where=where+" and work_id like '%"+query.getWorkid()+"%'";
            }else{
                where="where work_id like '%"+query.getWorkid()+"%'";
            }
        }
        if(query.getWorkcontent()!=null && !query.getWorkcontent().equals("null") && !query.getWorkcontent().isEmpty()){
            if(!where.isEmpty()){
                where=where+" and work_content like '%"+query.getWorkcontent()+"%'";
            }else{
                where="where work_content like '%"+query.getWorkcontent()+"%'";
            }
        }
        if(query.getTimeFrom()!=null && query.getTimeTo()!=null && !query.getTimeFrom().isEmpty()){
            if(!where.isEmpty()){
                where=where+" and create_time between '"+query.getTimeFrom()+"' and '"+query.getTimeTo()+"'";
            }else{
                where="where create_time between '"+query.getTimeFrom()+"' and '"+query.getTimeTo()+"'";
            }
        }
        if(query.getType()!=null && query.getType().equals("all") && query.getUserRole().equals("manager")){
            sql="select * from "+query.getTableName()+" order by create_time desc";
        }else{
            if(query.getId()!=null && !query.getId().equals("null")){
                sql="select * from "+query.getTableName()+" where id="+query.getId();
            }else{
                if(where.isEmpty()){
                    sql="select * from "+query.getTableName()+" where user_id='"+query.getUserId()+"' order by create_time desc";
                }else{
                    sql="select * from "+query.getTableName()+" "+where+" and user_id='"+query.getUserId()+"' order by create_time desc";
                }
            }
        }
        return sql;
    }
    public ResultSet getData() throws SQLException, IOException, JSONException {
        String tableName="xm07_teawork";
        //开始查询数据库
        String resultMsg="ok";
        int resultCode=0;
        List jsonList = new ArrayList();
        ylx_db query_db = new ylx_db("test");
        //构造sql语句，根据传递过来的查询条件参数
        String sql="";
        int count=0;
        sql="select * from "+tableName+"where user_id ='zhangsan'";
        ResultSet rs = query_db.executeQuery(sql);
        while (rs.next()) {
            List list = new ArrayList();
            list.add(rs.getString("work_id"));
            jsonList.add(list);
        }
        rs.close();
        query_db.close();
        //////////数据库查询完毕，得到了json数组jsonList//////////
        //jsonList.clear();
        //下面开始构建返回的json
        return rs;
    }
}