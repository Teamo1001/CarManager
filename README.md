# CarManager
  个人设计与实现的车辆管理系统，使用SSH,MySQL,Tomcat,Maven
<br>项目描述：
![image](https://github.com/GGSleeper/CarManager/raw/master/screenshots/main.png)
<br>车辆与驾驶员具有“可用”、“有计划”、“忙碌”三种状态。系统通过动态的改变其状态来完成车辆与驾驶员的调度功能<br>
![image](https://github.com/GGSleeper/CarManager/raw/master/screenshots/carInfo.png)
![image](https://github.com/GGSleeper/CarManager/raw/master/screenshots/driverInfo.png)
<br>只能对状态为"可用"的车辆进行申请<br>
![image](https://github.com/GGSleeper/CarManager/raw/master/screenshots/carApply.png)
<br>只能选择状态为"可用"的驾驶员
![image](https://github.com/GGSleeper/CarManager/raw/master/screenshots/applyDetail.png)
<br>审核状态共有“审核通过”、“不通过”、“待审批”、“审批中”三种，当职员发起申请时，如果部门领导进行审批后，则审批状态该为“审批中”提交给公司领导，公司领导审批通过后则审批状态改为“审核通过”；“审核通过”、“待审批”、“审批中”时车辆状态和驾驶员的状态会更改为“有计划”。“不通过”则会把车辆状态和驾驶员状态更改为“可用”。车辆使用申请审批通过后，将发送车辆使用计划包括时间、车牌号、申请人及申请人的联系方式给之前申请的调用的驾驶员，该驾驶员登入系统将接收到消息。<br>
![image](https://github.com/GGSleeper/CarManager/raw/master/screenshots/approve.png)
![image](https://github.com/GGSleeper/CarManager/raw/master/screenshots/userApply.png)
<br>具有权限的部门领导、公司领导以及驾驶员能进行出车记录，驾驶员根据收到的消息提醒选择对应车辆进行出车；只能选择状态为“可用”和“有计划”的车辆对应的车辆号码和驾驶员，出车时间会根据系统当前时间自动填入。<br>
![image](https://github.com/GGSleeper/CarManager/raw/master/screenshots/carOut.png)
<br>与出车类似，进车只能选择状态为"忙碌"的的车辆对应的车辆号码和驾驶员<br>
![image](https://github.com/GGSleeper/CarManager/raw/master/screenshots/carIn.png)
![image](https://github.com/GGSleeper/CarManager/raw/master/screenshots/carInOut.png)
