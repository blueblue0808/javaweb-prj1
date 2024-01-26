package cn.edu.zjut.model;

public class UserBean {
    // 属性声明
    private String username;
    private String password;
    //构造方法
    public UserBean(){}
    // get 方法
    public String getUsername(){ return username; }
    public String getPassword(){ return password; }
    // set 方法
    public void setUsername(String username){
        this.username = username;
    }
    public void setPassword(String password){
        this.password = password;
    }
    //新增用户类型
    private int type;
    //JavaBean必要的set和get
    public void setType(int type){
        this.type=type;
    }
    public int getType(){return type;}
}
