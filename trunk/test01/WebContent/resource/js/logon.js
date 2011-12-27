Ext.BLANK_IMAGE_URL = "ext/resources/images/default/s.gif";
Ext.QuickTips.init();
Ext.form.Field.prototype.msgTarget = "side";
Ext.onReady(function() {

	var userName = new Ext.form.TextField({
				name : 'userName',
				fieldLabel : '用户名',
				allowBlank : false,
				blankText : '用户名不能为空!'

			});

	var pwd = new Ext.form.TextField({
				name : 'pwd',
				fieldLabel : '密码',
				allowBlank : false,
				blankText : '密码不能为空!',
				inputType : 'password'
			});

	var randcode = new Ext.form.TextField({
				id : 'randcode',
				name : 'randcode',
				fieldLabel : '验证码',
				allowBlank : false,
				blankText : '验证码不能为空!',
				width : 70

			});

	var fpItems = [userName, pwd, randcode];
	function rest() {
		logonForm.getForm().reset();
	};
	// formPanel
	var logonForm = new Ext.form.FormPanel({
		// baseCls : 'x-plain',
		labelAlign : 'right',
		labelWidth : 70,
		height : 160,
		autoWidth : true,
		frame : true,
		bodyStyle : 'padding: 6px',
		labelWidth : 80,
		defaultType : 'textfield', // 1
		items : fpItems,
		buttonAlign : "center",
		buttons : [{
					text : '登录',
					iconCls : 'icon_save',
					handler : function() {
						if (!logonForm.getForm().isValid()) {
							return;
						} else {
							logonForm.getForm().el.mask('正在登陆...',
									'x-mask-loading');
							logonForm.getForm().submit({
										url : 'logon.action',
										method : 'POST',
										/*
										 * waitTitle : '完成窗口', waitMsg :
										 * '正在提交数据,请稍等......',
										 */
										success : function(form, action) {
											// Ext.Msg.alert('提示',
											// action.result.msg);
											logonForm.getForm().el.unmask();
											window.location.href = 'toMainPage.action';
										},
										failure : function(form, action) {
											logonForm.getForm().el.unmask();
											rest();
											Ext.Msg.alert('提示',
													action.result.msg);
										}
									});
						}
					}
				}, {
					text : '重置',
					iconCls : "icon_reset",
					handler : rest
				}]
	});

	var win = new Ext.Window({
				plain : true,
				frame : true,
				modal : true,
				iconCls : "icon_logonForm",
				title : '用户登录窗口',
				width : 280,
				height : 160,
				layout : 'fit',
				resizable : false,
				closable : false,
				draggable : false,
				items : logonForm
			});
	win.show();

	var rc = Ext.getDom('randcode');
	var rcp = Ext.get(rc.parentNode);
	rcp.createChild({
				tag : 'img',
				src : 'image.action',
				align : 'absbottom'
			});
});
