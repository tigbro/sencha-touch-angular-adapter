<!DOCTYPE html>
<html xmlns:ng="http://angularjs.org" xmlns:stng="http://sencha-touch-angular.org">
<head>
    <title>Sencha Toys</title>

    <link rel="stylesheet" href="../lib/sencha-touch.css"/>
    <meta name="auto-start" content="true">
    <script src="../lib/angular-0.9.19.js" autobind></script>
    <script src="../lib/sencha-touch-1.1.0.js"></script>
    <script src="../lib/require.js" data-main="../st-angular"></script>
    <!--
    <script src="sencha-touch-angular-adapter-0.9.2-SNAPSHOT.js"></script>
    -->
    <script src="todoapp.js"></script>

</head>
<body>

<st:carousel fullscreen="true" ng:controller="TodoController" >
    <st:panel id="todos" st:event="{activate:'refreshTodos()'}" scroll="true">
        <st:toolbar dock="top" title="Todos">
            <st:button text="Save" st:event="{tap:'saveTodos()'}"></st:button>
            <st:spacer></st:spacer>
            <st:button text="Settings" st:event="{tap:'$navigate(\'slide:settings\')'}"></st:button>
        </st:toolbar>
        <st:textfield name="inputText" place-holder="enter your todo here" st:event="{action:'addTodo()'}"></st:textfield>
        <st:panel>
            <st:checkboxfield ng:repeat="todo in todos" name="todo.done" label-width="80%" label="{{todo.name}}"></st:checkboxfield>
        </st:panel>
    </st:panel>
    <st:panel id="settings">
        <st:toolbar dock="top" title="Settings">
            <st:button text="Back" st:event="{tap:'$navigate(\'slide:todos\')'}"></st:button>
        </st:toolbar>
        <st:textfield name="storageKey" label="Store key"></st:textfield>
    </st:panel>

</st:carousel>


</body>
</html>