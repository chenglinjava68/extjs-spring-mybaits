Ext.BLANK_IMAGE_URL = "ext/resources/images/default/s.gif";
Ext.QuickTips.init();
Ext.form.Field.prototype.msgTarget = "side";
Ext.onReady(function() {

	var item0 = new Ext.Panel({
				title : '我的待办任务',
				html : '<div id="myMission"></div>',
				iconCls : 'icon_waitProcess'

			});

	var item1 = new Ext.Panel({
				title : '我申请的流程',
				html : '<div id="myProcess"></div>',
				iconCls : 'icon_myProcess'
			});

	var item2 = new Ext.Panel({
				title : '假期查询',
				html : '<div id="checkHoliday"></div>',
				iconCls : 'icon_holiday'
			});

	var item3 = new Ext.Panel({
				title : '我的邮箱',
				html : '<div id="myMail"></div>',
				iconCls : 'icon_email'
			});

	var item4 = new Ext.Panel({
				title : '已处理流程',
				html : '<div id="doneProcess"></div>',
				iconCls : 'icon_bussiness'
			});

	var item5 = new Ext.Panel({
				title : '可用流程',
				html : '<div id="usefulProcess"></div>',
				iconCls : 'icon_newFlow'
			});

	var accordionPanel = new Ext.Panel({
				contentEl : 'west-div',
				frame : true,
				border : true,
				width : 190,
				title : '功能菜单栏',
				animFloat : true,
				autoHide : false,
				collapseMode : 'mini',
				collapsible : true,
				floatable : false,
				minWidth : 180,
				region : 'west',
				margins : '5 0 5 5',
				split : true,
				maxWidth : 240,
				layout : 'accordion',
				layoutConfig : {
					animate : true
				},
				items : [item0, item1, item2, item3, item4, item5]
			});
	var contentPanel = new Ext.TabPanel({
		contentEl : 'center-center',
		margins : '5 5 5 0',
		region : 'center',
		enableTabScroll : true,
		activeTab : 0,
		items : [{
					id : 'homePage',
					title : '本工作流的需求及架构',
					closable : true,
					autoScroll : true,
					autoLoad : {
						url : 'resource/html/introduce.html',
						scripts : true
					}
				}],
		listeners : {
			// 传进去的三个参数分别为:这个tabpanel(tabsDemo),当前标签页,事件对象e
			"contextmenu" : function(contentPanel, myitem, e) {
				menu = new Ext.menu.Menu([{
							text : "关闭当前页",
							handler : function() {
								contentPanel.remove(myitem);
							}
						}, {
							text : "关闭其他所有页",
							handler : function() {
								contentPanel.items.each(function(item) {
											if (item.closable && item != myitem) {
												// 可以关闭的其他所有标签页全部关掉
												contentPanel.remove(item);
											}
										});
							}
						}, {
							text : "关闭所有页",
							handler : function() {
								contentPanel.items.each(function(item) {
											if (item.closable) {
												contentPanel.remove(item);
											}
										});
							}
						}, '-', {
							text : "刷新",
							handler : function() {
								var thisObj = myitem.getUpdater();
								if (thisObj)
									thisObj.refresh();
							}
						}]);
				e.preventDefault();
				// 显示在当前位置
				menu.showAt(e.getPoint());
			}
		}
	});

	MyViewportUi = Ext.extend(Ext.Viewport, {
				layout : {
					type : 'border'
				},

				initComponent : function() {
					this.items = [{
								xtype : 'panel',
								height : 125,
								region : 'north',
								contentEl : 'north-div',
								autoLoad : {
									url : 'resource/html/head.html',
									scripts : true
								}
							}, contentPanel, {
								xtype : 'panel',
								height : 30,
								region : 'south',
								contentEl : 'south-div',
								autoLoad : {
									url : 'resource/html/foot.html',
									scripts : true
								}
							}, accordionPanel];
					MyViewportUi.superclass.initComponent.call(this);
				}
			});

	new MyViewportUi();

	// 设置树形面板
	// 定义树节点,我的待办任务
	var mm = new Ext.tree.TreeNode({
				id : 'myMission',// 子结点id
				text : '我的任务',
				listeners : {
					'click' : function(node, event) {
						event.stopEvent();
						var n = contentPanel.getComponent(node.id);

						if (!n) { // 判断是否已经打开该面板
							n = contentPanel.add({
										'id' : node.id,
										'title' : node.text,
										closable : true, // 通过html载入目标页
										autoLoad : {
											url : 'myMission.action',
											scripts : true
										}
									});
						}
						contentPanel.setActiveTab(n);
					}
				}
			});

	// 生成树形面板
	var mmTree = new Ext.tree.TreePanel({
		renderTo : "myMission",
		root : mm,// 定位到根节点
		animate : true,// 开启动画效果
		enableDD : false,// 不允许子节点拖动
		border : false,// 没有边框
		rootVisible : true
			// 设为false将隐藏根节点，增加美观性
		});
	// 组内任务
	var gm = new Ext.tree.TreeNode({
		iconCls : 'icon_groupTask',
		id : 'groupMession',// 子结点id
		text : '组内任务',
		listeners : {
			'click' : function(node, event) {
				event.stopEvent();
				var n = contentPanel.getComponent(node.id);

				if (!n) { // 判断是否已经打开该面板
					n = contentPanel.add({
						'id' : node.id,
						'title' : node.text,
						closable : true, // 通过html载入目标页
						html : '<iframe scrolling="auto" frameborder="0" width="100%" height="100%" src="groupMission.action"></iframe>'
					});
				}
				contentPanel.setActiveTab(n);
			}
		}
	});

	// 生成树形面板
	var mpTree = new Ext.tree.TreePanel({
		renderTo : "myMission",
		root : gm,// 定位到根节点
		animate : true,// 开启动画效果
		enableDD : false,// 不允许子节点拖动
		border : false,// 没有边框
		rootVisible : true
			// 设为false将隐藏根节点，增加美观性
		});
	// 待签任务
	var wm = new Ext.tree.TreeNode({
		iconCls : 'icon_waitTask',
		id : 'waitMession',// 子结点id
		text : '待签任务',
		listeners : {
			'click' : function(node, event) {
				event.stopEvent();
				var n = contentPanel.getComponent(node.id);

				if (!n) { // 判断是否已经打开该面板
					n = contentPanel.add({
						'id' : node.id,
						'title' : node.text,
						closable : true, // 通过html载入目标页
						html : '<iframe scrolling="auto" frameborder="0" width="100%" height="100%" src="waitMission.action"></iframe>'
					});
				}
				contentPanel.setActiveTab(n);
			}
		}
	});

	// 生成树形面板
	var wmTree = new Ext.tree.TreePanel({
		renderTo : "myMission",
		root : wm,// 定位到根节点
		animate : true,// 开启动画效果
		enableDD : false,// 不允许子节点拖动
		border : false,// 没有边框
		rootVisible : true
			// 设为false将隐藏根节点，增加美观性
		});
	// 我申请的流程
	var mp = new Ext.tree.TreeNode({
		iconCls : 'icon_doingProcess',
		id : 'myProcess',// 子结点id
		text : '正在处理流程',
		listeners : {
			'click' : function(node, event) {
				event.stopEvent();
				var n = contentPanel.getComponent(node.id);

				if (!n) { // 判断是否已经打开该面板
					n = contentPanel.add({
						'id' : node.id,
						'title' : node.text,
						closable : true, // 通过html载入目标页
						html : '<iframe scrolling="auto" frameborder="0" width="100%" height="100%" src="myProcess.action"></iframe>'
					});
				}
				contentPanel.setActiveTab(n);
			}
		}
	});

	// 生成树形面板
	var mpTree = new Ext.tree.TreePanel({
		renderTo : "myProcess",
		root : mp,// 定位到根节点
		animate : true,// 开启动画效果
		enableDD : false,// 不允许子节点拖动
		border : false,// 没有边框
		rootVisible : true
			// 设为false将隐藏根节点，增加美观性
		});

	// 查看假期
	var mh = new Ext.tree.TreeNode({
		iconCls : 'icon_date',
		id : 'myHoliday',// 子结点id
		text : '假期信息查询',
		listeners : {
			'click' : function(node, event) {
				event.stopEvent();
				var n = contentPanel.getComponent(node.id);

				if (!n) { // 判断是否已经打开该面板
					n = contentPanel.add({
						'id' : node.id,
						'title' : node.text,
						closable : true, // 通过html载入目标页
						html : '<iframe scrolling="auto" frameborder="0" width="100%" height="100%" src="myHoliday.action"></iframe>'
					});
				}
				contentPanel.setActiveTab(n);
			}
		}
	});

	// 生成树形面板
	var mhTree = new Ext.tree.TreePanel({
		renderTo : "checkHoliday",
		root : mh,// 定位到根节点
		animate : true,// 开启动画效果
		enableDD : false,// 不允许子节点拖动
		border : false,// 没有边框
		rootVisible : true
			// 设为false将隐藏根节点，增加美观性
		});
	// 查看假期
	// 写信
	var writeMail = new Ext.tree.TreeNode({
		iconCls : 'icon_addMail',
		id : 'writeMail',// 子结点id
		text : '写信',
		listeners : {
			'click' : function(node, event) {
				event.stopEvent();
				var n = contentPanel.getComponent(node.id);

				if (!n) { // 判断是否已经打开该面板
					n = contentPanel.add({
						'id' : node.id,
						'title' : node.text,
						closable : true, // 通过html载入目标页
						html : '<iframe scrolling="auto" frameborder="0" width="100%" height="100%" src="writeMail.action"></iframe>'
					});
				}
				contentPanel.setActiveTab(n);
			}
		}
	});
	// 生成树形面板
	var writeMailTree = new Ext.tree.TreePanel({
		renderTo : "myMail",
		root : writeMail,// 定位到根节点
		animate : true,// 开启动画效果
		enableDD : false,// 不允许子节点拖动
		border : false,// 没有边框
		rootVisible : true
			// 设为false将隐藏根节点，增加美观性
		});
	// 收件箱
	var inbox = new Ext.tree.TreeNode({
		iconCls : 'icon_inboxMail',
		id : 'inbox',// 子结点id
		text : '收件箱',
		listeners : {
			'click' : function(node, event) {
				event.stopEvent();
				var n = contentPanel.getComponent(node.id);

				if (!n) { // 判断是否已经打开该面板
					n = contentPanel.add({
						'id' : node.id,
						'title' : node.text,
						closable : true, // 通过html载入目标页
						html : '<iframe scrolling="auto" frameborder="0" width="100%" height="100%" src="inbox.action"></iframe>'
					});
				}
				contentPanel.setActiveTab(n);
			}
		}
	});

	// 生成树形面板
	var inboxTree = new Ext.tree.TreePanel({
		renderTo : "myMail",
		root : inbox,// 定位到根节点
		animate : true,// 开启动画效果
		enableDD : false,// 不允许子节点拖动
		border : false,// 没有边框
		rootVisible : true
			// 设为false将隐藏根节点，增加美观性
		});

	// 发件箱
	var outbox = new Ext.tree.TreeNode({
		iconCls : 'icon_outboxMail',
		id : 'outbox',// 子结点id
		text : '发件箱',
		listeners : {
			'click' : function(node, event) {
				event.stopEvent();
				var n = contentPanel.getComponent(node.id);

				if (!n) { // 判断是否已经打开该面板
					n = contentPanel.add({
						'id' : node.id,
						'title' : node.text,
						closable : true, // 通过html载入目标页
						html : '<iframe scrolling="auto" frameborder="0" width="100%" height="100%" src="outbox.action"></iframe>'
					});
				}
				contentPanel.setActiveTab(n);
			}
		}
	});

	// 生成树形面板
	var outboxTree = new Ext.tree.TreePanel({
		renderTo : "myMail",
		root : outbox,// 定位到根节点
		animate : true,// 开启动画效果
		enableDD : false,// 不允许子节点拖动
		border : false,// 没有边框
		rootVisible : true
			// 设为false将隐藏根节点，增加美观性
		});

	// 草稿箱
	var tempbox = new Ext.tree.TreeNode({
		iconCls : 'icon_tempMail',
		id : 'tempbox',// 子结点id
		text : '草稿箱',
		listeners : {
			'click' : function(node, event) {
				event.stopEvent();
				var n = contentPanel.getComponent(node.id);

				if (!n) { // 判断是否已经打开该面板
					n = contentPanel.add({
						'id' : node.id,
						'title' : node.text,
						closable : true, // 通过html载入目标页
						html : '<iframe scrolling="auto" frameborder="0" width="100%" height="100%" src="tempbox.action"></iframe>'
					});
				}
				contentPanel.setActiveTab(n);
			}
		}
	});

	// 生成树形面板
	var tempboxTree = new Ext.tree.TreePanel({
		renderTo : "myMail",
		root : tempbox,// 定位到根节点
		animate : true,// 开启动画效果
		enableDD : false,// 不允许子节点拖动
		border : false,// 没有边框
		rootVisible : true
			// 设为false将隐藏根节点，增加美观性
		});

	var dp = new Ext.tree.TreeNode({
		iconCls : 'icon_doneProcess',
		id : 'doneProcess',// 子结点id
		text : '查看已被处理流程',
		listeners : {
			'click' : function(node, event) {
				event.stopEvent();
				var n = contentPanel.getComponent(node.id);

				if (!n) { // 判断是否已经打开该面板
					n = contentPanel.add({
						'id' : node.id,
						'title' : node.text,
						closable : true, // 通过html载入目标页
						html : '<iframe scrolling="auto" frameborder="0" width="100%" height="100%" src="doneProcess.action"></iframe>'
					});
				}
				contentPanel.setActiveTab(n);
			}
		}
	});

	// 生成树形面板
	var dpTree = new Ext.tree.TreePanel({
		renderTo : "doneProcess",
		root : dp,// 定位到根节点
		animate : true,// 开启动画效果
		enableDD : false,// 不允许子节点拖动
		border : false,// 没有边框
		rootVisible : true
			// 设为false将隐藏根节点，增加美观性
		});

	// 加载可用流程树功能节点
	var treeloader = new Ext.tree.TreeLoader({
				dataUrl : 'usefulProcess.action'
			});

	var treenode = new Ext.tree.AsyncTreeNode({
				iconCls : 'icon_usefulProcess',
				id : 'root',
				text : '查看可用流程',
				leaf : false
			});

	var treepanel = new Ext.tree.TreePanel({
		renderTo : "usefulProcess",
		root : treenode,// 定位到根节点
		animate : true,// 开启动画效果
		enableDD : false,// 不允许子节点拖动
		border : false,
		loader : treeloader,
		rootVisible : true
			// 设为false将隐藏根节点，增加美观性
		});

	// 设置树的点击事件
	function treeClick(node, e) {
		if (node.isLeaf()) {
			e.stopEvent();
			var n = contentPanel.getComponent(node.id);
			if (!n) {
				var n = contentPanel.add({
					'id' : node.id,
					'title' : node.text,
					closable : true,
					html : '<iframe scrolling="auto" frameborder="0" width="100%" height="100%" src="'
							+ node.id + '.action"></iframe>'
				});
			}
			contentPanel.setActiveTab(n);
		}
	}
	// 增加鼠标单击事件
	treepanel.on('click', treeClick);
});
