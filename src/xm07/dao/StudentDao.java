package xm07.dao;

/**
 * Created by NightYuan on 2018/6/7.
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
public class StudentDao {
    public JSONObject getRecord(Student query) throws SQLException, IOException, JSONException {
        String tableName="xm07_student";
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
                list.add(rs.getString("teacher"));
                list.add(rs.getString("student"));
                list.add(rs.getString("teaname"));
                list.add(rs.getString("stuname"));
                list.add(rs.getString("create_time"));
                list.add(rs.getString("user_id"));
                list.add(rs.getString("creator"));

                if(query.getUserId()!=null && query.getUserId().equals(rs.getString("user_id"))){
                    list.add("1");
                }else{
                    list.add("0");
                }
                list.add(count);
                System.out.println("JSON:"+list);
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

    /*
     * 功能：构造历史记录查询的sql语句,type=all查询所有，type=id查询某个记录，余下按照条件设置查询
     */
    private String createGetRecordSql(Student query){
        String sql="";
        String where="";
        if(query.getId()!=null && !query.getId().equals("null")){
            where="where id="+query.getId();
        }
        if(query.getTeacher()!=null && !query.getTeacher().equals("null") && !query.getTeacher().isEmpty()){
            if(!where.isEmpty()){
                where=where+" and teacher like '%"+query.getTeacher()+"%'";
            }else{
                where="where teacher like '%"+query.getTeacher()+"%'";
            }
        }
        if(query.getStudent()!=null && !query.getStudent().equals("null") && !query.getStudent().isEmpty()){
            if(!where.isEmpty()){
                where=where+" and student like '%"+query.getStudent()+"%'";
            }else{
                where="where student like '%"+query.getStudent()+"%'";
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
                    sql="select * from "+query.getTableName()+" where student='"+query.getUserId()+"' order by create_time desc";
                }else{
                    sql="select * from "+query.getTableName()+" "+where+" and student='"+query.getUserId()+"' order by create_time desc";
                }
            }
        }
        return sql;
    }
    public ResultSet getData() throws SQLException, IOException, JSONException {
        String tableName="xm07_student";
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
            list.add(rs.getString("teacher"));
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

