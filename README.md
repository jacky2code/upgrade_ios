# iOS 进阶

## UI 视图

### UITableView

- 重用机制

  ```objective-c
  cell = [tableView dequeueReusableCellWithIdentifier:identifier]
  ```

  ```mermaid
  sequenceDiagram
      participant A as UITableView
      participant B as ReusablePool
      A ->> B: cellA超出屏幕顶部不显示后后加入重用池
      Note left of A: tableView向上滑动^
      
      Note right of B: 重用池
      B -->> A: cellA重用给底部新出现的cellN
  ```

  - 自定义 UI 
    - 字母索引条

- 数据源同步

- 

### 事件传递&视图响应

### 图像显示原理

### UI 卡顿、掉帧

### UI绘制原理/异步绘制

### 离屏渲染



## OC 语言

### 分类

### 关联对象

### 扩展、代理

### KVO、KVC

### NSNotification

### 属性关键字

- weak

- strong

- copy

  

## Runtime

### 对象、类对象、元类对象

### 消息传递机制

### 消息转发流程

### 方法缓存

### Method-Swizzling

### 动态添加方法



## 内存

### ARC

### MRC

### 引用计数机制

### 弱引用表

### AutoReleasePool

### 循环引用



## Block

### Block 本质

### Block 截获变量特性

### ______Block修饰符本质

### Block的内存管理

### 循环引用



## 多线程

### GCD

### NSOperation/NSOperationQueue

### NSThread

### 线程同步、资源共享

### 互斥锁、自旋锁、递归锁等



## RunLoop

### 什么是RunLoop

### Mode/Source/Timer/Observer

### 事件循环机制

### RunLoop 与 NSTimer

### RunLoop 与 线程之间的关系

### 常驻线程



## 网络

### HTTP 协议

### HTTPS与网络安全

### TCP/UDP

### DNS 解析

### Session / Cookie



## 设计模式

### 六大设计原则

### 责任链

### 桥接

### 适配器

### 单例

### 命令



## 架构/框架

### 图片缓存框架

### 时长统计框架

### 复杂页面架构

### 客户端整体架构



## 算法

### 字符串反转

### 链表反转

### 有序数组合并

### Hash 算法

### 查找两个子视图的共同父视图

### 求无序数组当中的中位数



## 第三方

### AFNetworking

### SDWebImageView

### Reactive Cocoa

### AsyncDisplayKit



## 总结

