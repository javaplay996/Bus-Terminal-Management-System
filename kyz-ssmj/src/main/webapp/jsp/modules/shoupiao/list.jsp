<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-cn">


<head>
    <%@ include file="../../static/head.jsp" %>
    <!-- font-awesome -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
</head>
<style>

</style>
<body>
<!-- Pre Loader -->
<div class="loading">
    <div class="spinner">
        <div class="double-bounce1"></div>
        <div class="double-bounce2"></div>
    </div>
</div>
<!--/Pre Loader -->
<div class="wrapper">
    <!-- Page Content -->
    <div id="content">
        <!-- Top Navigation -->
        <%@ include file="../../static/topNav.jsp" %>
        <!-- Menu -->
        <div class="container menu-nav">
            <nav class="navbar navbar-expand-lg lochana-bg text-white">
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="ti-menu text-white"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul id="navUl" class="navbar-nav mr-auto">
                    </ul>
                </div>
            </nav>
        </div>
        <!-- /Menu -->
        <!-- Breadcrumb -->
        <!-- Page Title -->
        <div class="container mt-0">
            <div class="row breadcrumb-bar">
                <div class="col-md-6">
                    <h3 class="block-title">售票管理</h3>
                </div>
                <div class="col-md-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="${pageContext.request.contextPath}/index.jsp">
                                <span class="ti-home"></span>
                            </a>
                        </li>
                        <li class="breadcrumb-item">售票管理</li>
                        <li class="breadcrumb-item active">售票列表</li>
                    </ol>
                </div>
            </div>
        </div>
        <!-- /Page Title -->

        <!-- /Breadcrumb -->
        <!-- Main Content -->
        <div class="container">

            <div class="row">
                <!-- Widget Item -->
                <div class="col-md-12">
                    <div class="widget-area-2 lochana-box-shadow">
                        <h3 class="widget-title">售票列表</h3>
                        <div class="table-responsive mb-3">
                            <div class="col-sm-12">
                                                                                                                                 
                                            <label>
                                                售票状态
                                                <select name="shoupiaoTypesSelectSearch" id="shoupiaoTypesSelectSearch" class="form-control form-control-sm"
                                                        aria-controls="tableId">
                                                </select>
                                            </label>
                                                                                         
                                        <label>
                                            车辆类型
                                            <select name="carTypesSelectSearch" id="carTypesSelectSearch" class="form-control form-control-sm"
                                                    aria-controls="tableId">
                                            </select>
                                        </label>

                                             
                                        <label>
                                            始发站
                                            <input type="text" id="startSearch" class="form-control form-control-sm"
                                                   placeholder="" aria-controls="tableId">
                                        </label>
                                             
                                        <label>
                                            终点站
                                            <input type="text" id="endSearch" class="form-control form-control-sm"
                                                   placeholder="" aria-controls="tableId">
                                        </label>
                                            
                                <button onclick="search()" type="button" class="btn btn-primary">查询</button>
                                <button onclick="add()" type="button" class="btn btn-success 新增">添加</button>
                                <button onclick="deleteMore()" type="button" class="btn btn-danger 删除">批量删除</button>
                                <button onclick="graph()" type="button" class="btn btn-success 报表">报表</button>
                            </div>
                            <table id="tableId" class="table table-bordered table-striped">
                                <thead>
                                <tr>
                                    <th class="no-sort" style="min-width: 35px;">
                                        <div class="custom-control custom-checkbox">
                                            <input class="custom-control-input" type="checkbox" id="select-all"
                                                   onclick="chooseAll()">
                                            <label class="custom-control-label" for="select-all"></label>
                                        </div>
                                    </th>

                                    <th >车辆名字</th>
                                    <th >车辆类型</th>
                                    <th >始发站</th>
                                    <th >终点站</th>
                                    <th >售卖金额</th>
                                    <th >售票状态</th>
                                    <th>操作</th>
                                </tr>
                                </thead>
                                <tbody>
                                </tbody>
                            </table>
                            <div class="col-md-6 col-sm-3">
                                <div class="dataTables_length" id="tableId_length">

                                    <select name="tableId_length" aria-controls="tableId" id="selectPageSize"
                                            onchange="changePageSize()">
                                        <option value="10">10</option>
                                        <option value="25">25</option>
                                        <option value="50">50</option>
                                        <option value="100">100</option>
                                    </select>
                                    条 每页

                                </div>
                            </div>
                            <nav aria-label="Page navigation example">
                                <ul class="pagination justify-content-end">
                                    <li class="page-item" id="tableId_previous" onclick="pageNumChange('pre')">
                                        <a class="page-link" href="#" tabindex="-1">上一页</a>
                                    </li>

                                    <li class="page-item" id="tableId_next" onclick="pageNumChange('next')">
                                        <a class="page-link" href="#">下一页</a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
                <!-- /Widget Item -->
            </div>
        </div>
        <!-- /Main Content -->

    </div>
    <!-- /Page Content -->
</div>
<!-- Back to Top -->
<a id="back-to-top" href="#" class="back-to-top">
    <span class="ti-angle-up"></span>
</a>
<!-- /Back to Top -->
<%@ include file="../../static/foot.jsp" %>
<script language="javascript" type="text/javascript"
        src="${pageContext.request.contextPath}/resources/My97DatePicker/WdatePicker.js"></script>

<script>
    <%@ include file="../../utils/menu.jsp"%>
            <%@ include file="../../static/setMenu.js"%>
            <%@ include file="../../utils/baseUrl.jsp"%>
            <%@ include file="../../static/getRoleButtons.js"%>
            <%@ include file="../../static/crossBtnControl.js"%>
    var tableName = "shoupiao";
    var pageType = "list";
    var searchForm = {key: ""};
    var pageIndex = 1;
    var pageSize = 10;
    var totalPage = 0;
    var dataList = [];
    var sortColumn = '';
    var sortOrder = '';
    var ids = [];
    var checkAll = false;

     var carTypesOptions = [];

    var shoupiaoTypesOptions = [];

    function init() {
        // 满足条件渲染提醒接口
    }

    // 改变每页记录条数
    function changePageSize() {
        var selection = document.getElementById('selectPageSize');
        var index = selection.selectedIndex;
        pageSize = selection.options[index].value;
        getDataList();
    }



    // 查询
    function search() {
        searchForm = {key: ""};

        <!-- 级联表的级联字典表 -->
                                         
                        //车辆名字
        var carNameSearchInput = $('#carNameSearch');
        if( carNameSearchInput != null){
            if (carNameSearchInput.val() != null && carNameSearchInput.val() != '') {
                searchForm.carName = $('#carNameSearch').val();
            }
        }
                     
                        //司机
        var carDriverSearchInput = $('#carDriverSearch');
        if( carDriverSearchInput != null){
            if (carDriverSearchInput.val() != null && carDriverSearchInput.val() != '') {
                searchForm.carDriver = $('#carDriverSearch').val();
            }
        }
                                         
                            //车辆类型
        var carTypesSelectSearchInput = document.getElementById("carTypesSelectSearch");
        if(carTypesSelectSearchInput != null){
            var carTypesIndex = carTypesSelectSearchInput.selectedIndex;
            var carTypesValue;
            if( carTypesIndex  == 0){
                carTypesValue='';
            }else{
                carTypesValue= document.getElementById("carTypesSelectSearch").options[carTypesIndex].value;
            }
            searchForm.carTypes = carTypesValue;
        }
                     
                        //车牌号
        var carNumberSearchInput = $('#carNumberSearch');
        if( carNumberSearchInput != null){
            if (carNumberSearchInput.val() != null && carNumberSearchInput.val() != '') {
                searchForm.carNumber = $('#carNumberSearch').val();
            }
        }
                     
                        //始发站
        var startSearchInput = $('#startSearch');
        if( startSearchInput != null){
            if (startSearchInput.val() != null && startSearchInput.val() != '') {
                searchForm.start = $('#startSearch').val();
            }
        }
                     
                        //终点站
        var endSearchInput = $('#endSearch');
        if( endSearchInput != null){
            if (endSearchInput.val() != null && endSearchInput.val() != '') {
                searchForm.end = $('#endSearch').val();
            }
        }
                        <!-- 本表的查询条件 -->
                 
            //售票状态
        var shoupiaoTypesSelectSearchInput = document.getElementById("shoupiaoTypesSelectSearch");
        if(shoupiaoTypesSelectSearchInput != null){
            var shoupiaoTypesIndex = shoupiaoTypesSelectSearchInput.selectedIndex;
            var shoupiaoTypesValue;
            if( shoupiaoTypesIndex  == 0){
                shoupiaoTypesValue='';
            }else{
                shoupiaoTypesValue= document.getElementById("shoupiaoTypesSelectSearch").options[shoupiaoTypesIndex].value;
            }
            searchForm.shoupiaoTypes = shoupiaoTypesValue;
        }
            getDataList();
    }

    // 获取数据列表
    function getDataList() {
        http("shoupiao/page", "GET", {
            page: pageIndex,
            limit: pageSize,
            sort: sortColumn,
            order: sortOrder,
            //本表的
            shoupiaoTypes: searchForm.shoupiaoTypes,

            //级联表的
            carName: searchForm.carName,
            carDriver: searchForm.carDriver,
            carTypes: searchForm.carTypes,
            carNumber: searchForm.carNumber,
            start: searchForm.start,
            end: searchForm.end,


    }, (res) => {
            if(res.code == 0
            )
            {
                clear();
                dataList = res.data.list;
                totalPage = res.data.totalPage;
                //var tbody = document.getElementById('tbMain');
                for (var i = 0; i < dataList.length; i++) { //遍历一下表格数据  
                    var trow = setDataRow(dataList[i], i); //定义一个方法,返回tr数据 
                    $('tbody').append(trow);
                }
                pagination(); //渲染翻页组件
                getRoleButtons();// 权限按钮控制
            }
        })
        ;
    }

    // 渲染表格数据
    function setDataRow(item, number) {
        //创建行 
        var row = document.createElement('tr');
        row.setAttribute('class', 'useOnce');
        //创建勾选框
        var checkbox = document.createElement('td');
        var checkboxDiv = document.createElement('div');
        checkboxDiv.setAttribute("class", "custom-control custom-checkbox");
        var checkboxInput = document.createElement('input');
        checkboxInput.setAttribute("class", "custom-control-input");
        checkboxInput.setAttribute("type", "checkbox");
        checkboxInput.setAttribute('name', 'chk');
        checkboxInput.setAttribute('value', item.id);
        checkboxInput.setAttribute("id", number);
        checkboxDiv.appendChild(checkboxInput);
        var checkboxLabel = document.createElement('label');
        checkboxLabel.setAttribute("class", "custom-control-label");
        checkboxLabel.setAttribute("for", number);
        checkboxDiv.appendChild(checkboxLabel);
        checkbox.appendChild(checkboxDiv);
        row.appendChild(checkbox)


                //车辆名字
        var carNameCell = document.createElement('td');
        carNameCell.innerHTML = item.carName;
        row.appendChild(carNameCell);


                    //车辆类型
        var carTypesCell = document.createElement('td');
        carTypesCell.innerHTML = item.carValue;
        row.appendChild(carTypesCell);


                //始发站
        var startCell = document.createElement('td');
        startCell.innerHTML = item.start;
        row.appendChild(startCell);


                //终点站
        var endCell = document.createElement('td');
        endCell.innerHTML = item.end;
        row.appendChild(endCell);



        //售卖金额
        var actualMoneyCell = document.createElement('td');
        actualMoneyCell.innerHTML = item.actualMoney;
        row.appendChild(actualMoneyCell);


        //售票状态
        var shoupiaoTypesCell = document.createElement('td');
        shoupiaoTypesCell.innerHTML = item.shoupiaoValue;
        row.appendChild(shoupiaoTypesCell);

        var role = window.sessionStorage.getItem('role');

        //每行按钮
        var btnGroup = document.createElement('td');

        //详情按钮
        var detailBtn = document.createElement('button');
        var detailAttr = "detail(" + item.id + ')';
        detailBtn.setAttribute("type", "button");
        detailBtn.setAttribute("class", "btn btn-info btn-sm 查看");
        detailBtn.setAttribute("onclick", detailAttr);
        detailBtn.innerHTML = "查看"
        btnGroup.appendChild(detailBtn)
        if(role=="管理员"){
            //修改按钮
            var editBtn = document.createElement('button');
            var editAttr = 'edit(' + item.id + ')';
            editBtn.setAttribute("type", "button");
            editBtn.setAttribute("class", "btn btn-warning btn-sm 修改");
            editBtn.setAttribute("onclick", editAttr);
            editBtn.innerHTML = "修改"
            btnGroup.appendChild(editBtn)
        } else if(item.shoupiaoTypes==1){
            //修改按钮
            var editBtn = document.createElement('button');
            var editAttr = 'edit(' + item.id + ')';
            editBtn.setAttribute("type", "button");
            editBtn.setAttribute("class", "btn btn-warning btn-sm 修改");
            editBtn.setAttribute("onclick", editAttr);
            editBtn.innerHTML = "检票"
            btnGroup.appendChild(editBtn)
        }

        //删除按钮
        var deleteBtn = document.createElement('button');
        var deleteAttr = 'remove(' + item.id + ')';
        deleteBtn.setAttribute("type", "button");
        deleteBtn.setAttribute("class", "btn btn-danger btn-sm 删除");
        deleteBtn.setAttribute("onclick", deleteAttr);
        deleteBtn.innerHTML = "删除"
        btnGroup.appendChild(deleteBtn)

        row.appendChild(btnGroup)
        return row;
    }


    // 翻页
    function pageNumChange(val) {
        if (val == 'pre') {
            pageIndex--;
        } else if (val == 'next') {
            pageIndex++;
        } else {
            pageIndex = val;
        }
        getDataList();
    }

    // 下载
    function download(url) {
        window.open(url);
    }

    // 渲染翻页组件
    function pagination() {
        var beginIndex = pageIndex;
        var endIndex = pageIndex;
        var point = 4;
        //计算页码
        for (var i = 0; i < 3; i++) {
            if (endIndex == totalPage) {
                break;
            }
            endIndex++;
            point--;
        }
        for (var i = 0; i < 3; i++) {
            if (beginIndex == 1) {
                break;
            }
            beginIndex--;
            point--;
        }
        if (point > 0) {
            while (point > 0) {
                if (endIndex == totalPage) {
                    break;
                }
                endIndex++;
                point--;
            }
            while (point > 0) {
                if (beginIndex == 1) {
                    break;
                }
                beginIndex--;
                point--
            }
        }
        // 是否显示 前一页 按钮
        if (pageIndex > 1) {
            $('#tableId_previous').show();
        } else {
            $('#tableId_previous').hide();
        }
        // 渲染页码按钮
        for (var i = beginIndex; i <= endIndex; i++) {
            var pageNum = document.createElement('li');
            pageNum.setAttribute('onclick', "pageNumChange(" + i + ")");
            if (pageIndex == i) {
                pageNum.setAttribute('class', 'paginate_button page-item active useOnce');
            } else {
                pageNum.setAttribute('class', 'paginate_button page-item useOnce');
            }
            var pageHref = document.createElement('a');
            pageHref.setAttribute('class', 'page-link');
            pageHref.setAttribute('href', '#');
            pageHref.setAttribute('aria-controls', 'tableId');
            pageHref.setAttribute('data-dt-idx', i);
            pageHref.setAttribute('tabindex', 0);
            pageHref.innerHTML = i;
            pageNum.appendChild(pageHref);
            $('#tableId_next').before(pageNum);
        }
        // 是否显示 下一页 按钮
        if (pageIndex < totalPage) {
            $('#tableId_next').show();
            $('#tableId_next a').attr('data-dt-idx', endIndex + 1);
        } else {
            $('#tableId_next').hide();
        }
        var pageNumInfo = "当前第 " + pageIndex + " 页，共 " + totalPage + " 页";
        $('#tableId_info').html(pageNumInfo);
    }

    // 跳转到指定页
    function toThatPage() {
        //var index = document.getElementById('pageIndexInput').value;
        if (index < 0 || index > totalPage) {
            alert('请输入正确的页码');
        } else {
            pageNumChange(index);
        }
    }

    // 全选/全不选
    function chooseAll() {
        checkAll = !checkAll;
        var boxs = document.getElementsByName("chk");
        for (var i = 0; i < boxs.length; i++) {
            boxs[i].checked = checkAll;
        }
    }

    // 批量删除
    function deleteMore() {
        ids = []
        var boxs = document.getElementsByName("chk");
        for (var i = 0; i < boxs.length; i++) {
            if (boxs[i].checked) {
                ids.push(boxs[i].value)
            }
        }
        if (ids.length == 0) {
            alert('请勾选要删除的记录');
        } else {
            remove(ids);
        }
    }

    // 删除
    function remove(id) {
        var mymessage = confirm("真的要删除吗？");
        if (mymessage == true) {
            var paramArray = [];
            if (id == ids) {
                paramArray = id;
            } else {
                paramArray.push(id);
            }
            httpJson("shoupiao/delete", "POST", paramArray, (res) => {
                if(res.code == 0
        )
            {
                getDataList();
                alert('删除成功');
            }
        })
            ;
        }
        else {
            alert("已取消操作");
        }
    }

    // 用户登出
    <%@ include file="../../static/logout.jsp"%>

    //修改
    function edit(id) {
        window.sessionStorage.setItem('updateId', id)
        window.location.href = "add-or-update.jsp"
    }

    //清除会重复渲染的节点
    function clear() {
        var elements = document.getElementsByClassName('useOnce');
        for (var i = elements.length - 1; i >= 0; i--) {
            elements[i].parentNode.removeChild(elements[i]);
        }
    }

    //添加
    function add() {
        window.sessionStorage.setItem("addshoupiao", "addshoupiao");
        window.location.href = "add-or-update.jsp"
    }

    //报表
    function graph() {
        window.location.href = "graph.jsp"
    }

    // 查看详情
    function detail(id) {
        window.sessionStorage.setItem("updateId", id);
        window.location.href = "info.jsp";
    }

    //填充级联表搜索下拉框
                                         
                     
                                         
        function carTypesSelectSearch() {
            var carTypesSelectSearch = document.getElementById('carTypesSelectSearch');
            if(carTypesSelectSearch != null) {
                carTypesSelectSearch.add(new Option('', ''));
                if (carTypesOptions != null && carTypesOptions.length > 0){
                    for (var i = 0; i < carTypesOptions.length; i++) {
                            carTypesSelectSearch.add(new Option(carTypesOptions[i].indexName, carTypesOptions[i].codeIndex));
                    }
                }
            }
        }
                     
                     
                     
                    
    //填充本表搜索下拉框
                 
        function shoupiaoTypesSelectSearch() {
            var shoupiaoTypesSelectSearch = document.getElementById('shoupiaoTypesSelectSearch');
            if(shoupiaoTypesSelectSearch != null) {
                shoupiaoTypesSelectSearch.add(new Option('',''));
                if (shoupiaoTypesOptions != null && shoupiaoTypesOptions.length > 0){
                    for (var i = 0; i < shoupiaoTypesOptions.length; i++) {
                            shoupiaoTypesSelectSearch.add(new Option(shoupiaoTypesOptions[i].indexName,shoupiaoTypesOptions[i].codeIndex));
                    }
                }
            }
        }
    
    //查询级联表搜索条件所有列表
        function carTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=car_types", "GET", {}, (res) => {
                if(res.code == 0){
                    carTypesOptions = res.data.list;
                }
            });
        }

    //查询当前表搜索条件所有列表
        function shoupiaoTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=shoupiao_types", "GET", {}, (res) => {
                if(res.code == 0){
                    shoupiaoTypesOptions = res.data.list;
                }
            });
        }


    $(document).ready(function () {
        //激活翻页按钮
        $('#tableId_previous').attr('class', 'paginate_button page-item previous')
        $('#tableId_next').attr('class', 'paginate_button page-item next')
        //隐藏原生搜索框
        $('#tableId_filter').hide()
        //设置右上角用户名
        $('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
        //设置项目名
        $('.sidebar-header h3 a').html(projectName)
        setMenu();
        init();

        //查询级联表的搜索下拉框
        carTypesSelect();

        //查询当前表的搜索下拉框
        shoupiaoTypesSelect();
        getDataList();

        //级联表的下拉框赋值
                                                 
                         
                                                 
    carTypesSelectSearch();
                         
                         
                         
                        
        //当前表的下拉框赋值
                                                 
            shoupiaoTypesSelectSearch();
            
    <%@ include file="../../static/myInfo.js"%>
    });
</script>
</body>

</html>