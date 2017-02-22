---
title: Daydream Welcome
categories:
  - Daydream
tags:
  - Daydream
  - Welcome
date: 2017-02-16 16:57:22
---

![](http://cdn.tyrion.wang/Welcome_0.0_title.jpg)

<!--more-->
# Welcome结构
![](http://cdn.tyrion.wang/Welcome_1.0_structure.png)

# Low Poly场景风格
![](http://cdn.tyrion.wang/Welcome_11.0_scene_01.jpg?imageMogr2/thumbnail/1024x)
Daydream Welcome采用了简洁的Low Poly风格，有效降低了模型的面数，节省APP在性能上的开销。但是，Daydream使用了复杂的纹理贴图以及丰富的光影效果，这使其Low Poly风格的场景有了更多细节，更趋近于真实。

# 引导过程
## 调整头戴式设备
![](http://cdn.tyrion.wang/Welcome_1.0_HMD_adjust.jpg)
此时转头环顾场景，当界面在视线外，两三秒后界面会重新显示到用户视野正前方，界面使用淡入的动画，视觉上不会觉得不适。

## 功能引导
### 手柄按键说明
Welcome会引导用户将控制器上的按钮逐一操作一遍，当前需要按下的按钮，会以蓝色圆圈标记，如下图：
![](http://cdn.tyrion.wang/Welcome_2.3_button_info_1.1.jpg)
用户完成操作会打钩表示该步骤成功：
![](http://cdn.tyrion.wang/Welcome_2.3_button_info_1.jpg)
![](http://cdn.tyrion.wang/Welcome_2.3_button_info_2.jpg)

### 头戴和手柄校准
![](http://cdn.tyrion.wang/Welcome_3.0_calibrate_1.jpg)
Welcome以蝴蝶来引导用户的视线，蝴蝶从用户头顶飞进视野，之后再飞到左前方，最后飞出用户的视野，这时用户会不自觉地跟着蝴蝶转头。
![](http://cdn.tyrion.wang/Welcome_3.0_calibrate_2.jpg)
之后，用户会非常自然的看见左边处于视野之外的提示界面，提醒用户长按Home按钮将视野和手柄射线校准至正前方。
![](http://cdn.tyrion.wang/Welcome_3.0_calibrate_3.jpg)
在重复两次这样的校准后，头戴和手柄的校准结束。
![](http://cdn.tyrion.wang/Welcome_3.0_calibrate_4.jpg)

### 光标说明
![](http://cdn.tyrion.wang/Welcome_4.0_cursor_1.jpg)
![](http://cdn.tyrion.wang/Welcome_4.0_cursor_2.jpg)
在提示用户长按Home键再一次校准之后，Welcome让用户使用光标点击蝴蝶，点击之后完成光标的说明。

### 模拟光标偏离的情况，引导校准
![](http://cdn.tyrion.wang/Welcome_4.3_cursor_calibrate_1.jpg)
这里Welcome会为用户模拟射线光标偏离中心的情况。
![](http://cdn.tyrion.wang/Welcome_4.3_cursor_calibrate_2.jpg)
当用户按照提示操作之后，光标会偏离，此时用户能体会到光标偏离后操作上的不便，并且也明白了在这种情况下需要校准。
![](http://cdn.tyrion.wang/Welcome_4.3_cursor_calibrate_3.jpg)
之后Welcome会提示用户长按Home校准，并告诉用户，此时并非将光标对准前方，而是将控制器对准前方。
![](http://cdn.tyrion.wang/Welcome_4.3_cursor_calibrate_4.jpg)

## 体验
### 环顾四周
至此，所有引导都进行完毕了，接下来Welcome将用户至于一系列好玩儿的情境中，让用户体验不一样的场景和一些基本的操控方式。
![](http://cdn.tyrion.wang/Welcome_5.0_exp_look_around_1.jpg)
![](http://cdn.tyrion.wang/Welcome_5.0_exp_look_around_2.jpg)
![](http://cdn.tyrion.wang/Welcome_5.0_exp_look_around_3.jpg?imageMogr2/thumbnail/468x)
在森林场景中用户将拿着一个手电筒，环顾四周找小动物，确认键是手电筒开关。用户将会找到鹿、青蛙、浣熊、刺猬等动物，最后Welcome将会提示用户点击天空中的脉冲星，跳转到下一个场景。

### 博物馆场景
![](http://cdn.tyrion.wang/Welcome_13.0_exp_museum.jpg?imageMogr2/thumbnail/468x)
这时场景会跳转到博物馆，四周有鲸鱼的骨架、企鹅、乌龟。前方有一扇大窗户，用户使用触摸板左右滑动可以切换其中的场景。

### 使用手柄拖拽物体
![](http://cdn.tyrion.wang/Welcome_13.0_exp_museum_1.jpg)
这一环节用户将会用控制器拖拽物体，当拖动星球时，太阳系会旋转，用户能体验拖拽这这种交互方式。
![](http://cdn.tyrion.wang/Welcome_13.0_exp_museum_3.jpg)
当向内拉动椰树再放开时，椰树会像发射炮弹一样弹射出椰子，用户可以试着将椰子弹射到海里的小船上。远处会有海豚跳起，近处的石头其实是两只乌龟，一段时间后它们会从壳里出来。
### 使用手柄投掷物体
![](http://cdn.tyrion.wang/Welcome_13.0_exp_museum_2.jpg)
这个场景中，一只北极狐会叼来一根木棍，用户可以拿起它，向前投掷，北极狐会跑去将木棍捡回来，非常有趣。北极狐很可爱，一头海狮还会时不时的从近处的冰窟窿里跳起来。
### 使用手柄拾起物体
![](http://cdn.tyrion.wang/Welcome_13.0_exp_museum_4.jpg)
用户可以用控制器拿起沙漠中的枯树干、石头、牛头骨等，每件物品下面都藏着小动物。

## 完成引导
### 引导使用Home按钮退出
![](http://cdn.tyrion.wang/Welcome_14.0_press_home_finish.jpg)
到这里，Daydream Welcome的所有内容就体验完毕了，整个过程非常舒适且富有乐趣。与其说这是一个新手引导，还不如说这是一款精美的游戏。不少用户都表示反复体验了多次，能在其中感受到快乐。将Welcome算作是Daydream平台的一个经典应用，当之无愧！

