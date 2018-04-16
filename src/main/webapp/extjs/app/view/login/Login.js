/**
 * Created by 17020751 on 2018/3/19.
 */

Ext.define('MyApp.view.login.Login', {
    extend: 'Ext.window.Window',
    xtype: 'login',

    //这个 requires 块可以确保我们初始化 Login 窗体之前需要依赖的任何类都包括进来。
    // 我们需要包括 LoginController.js 因为我们要把它指定为我们下一行控制器。 我们还需要包括 Ext.form.Panel 因为我们的视图包含一个表格面板。
    requires: [
        'MyApp.view.login.LoginController',
        'Ext.form.Panel'
    ],

    controller: 'login',
    bodyPadding: 10,
    title: 'Login Window 就是这个我的登录pannel',
    closable: false,
    autoShow: true,

    items: {
        xtype: 'form',
        reference: 'form',
        items: [{
            xtype: 'textfield',
            name: 'username',
            fieldLabel: 'Username',
            allowBlank: false
        }, {
            xtype: 'textfield',
            name: 'password',
            inputType: 'password',
            fieldLabel: 'Password',
            allowBlank: false
        }, {
            xtype: 'displayfield',
            hideEmptyLabel: false,
            value: 'Enter any non-blank password'
        }],
        buttons: [{
            text: 'Login',
            formBind: true,
            listeners: {
                click: 'onLoginClick'
            }
        }]
    }
});