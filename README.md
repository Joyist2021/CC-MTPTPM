# CC-MTPTPM

越南开源php手机贩售平台，学习借鉴


## 账号密码
admin@gmail.com / admin

## 数据库 'cuoiky.sql'

## 数据库链接配置文件 '/lib/database.php'

    public function __construct()
    {
        $this->link = mysqli_connect("localhost:3306", "cuoiky", "jHNG4Bnszj772LXD", "cuoiky") or die();
        mysqli_set_charset($this->link, "utf8");
    }


## 全局根目录路径 '/lib/funtion.php'

function base_url()

{
    return $url = "http://localhost:81/doanchuyennganh/";
}
