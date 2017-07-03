---
title: DaydreamTransplant
categories:
  - Daydream
tags:
  - Daydream
  - VR游戏开发
  - 移植
date: 2017-03-16 16:34:10
---

工程配置
------
1. File > Build Settings 切换Platform到Android
2. “Player Settings...” 勾上Virtual Reality Supported，并选择Daydream
3. Minimum API Level选择"Android 7.0 'Nougat' (API level 24)"
4. 导入DaydreamSDK

添加、替换脚本
------
5. 将Main Camera放到Player下
6. 将Prefabs > UI中的GvrControllerPointer放到Player下
7. 将GvrViewerMain、GvrControllerMain、GvrEventSystem放到场景中

模型和代码微调
------
8. Main Camera放到Player下，调整成第一人称视角
9. 将Player节点上控制移动的脚本去掉，防止移动导致Camera错位
10. 在Daydream Motion Controller节点下加入模型（游戏中的枪和开枪特效），调节到合理的位置，并去掉Daydream射线的光标
11. 增加脚本监听Daydream Motion Controller Click事件，在点击时调用游戏中开枪的函数
12. 调整游戏菜单等2D界面以适应VR场景（这里直接将其删除）