(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-2f6bd076"],{4499:function(t,e,s){"use strict";s("d689")},9406:function(t,e,s){"use strict";s.r(e);var l=function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("div",[s("BasicLayout",{scopedSlots:t._u([{key:"wrapper",fn:function(){return[s("el-row",{staticClass:"mb10",attrs:{gutter:10}},[s("el-col",{attrs:{sm:24,md:12}},[t.info.cpu?s("el-card",{staticClass:"box-card",attrs:{shadow:"always","body-style":{paddingTop:"0 !important"}}},[s("div",{staticClass:"clearfix",attrs:{slot:"header"},slot:"header"},[s("el-row",{attrs:{gutter:10}},[s("el-col",{attrs:{sm:24,md:8}},[s("el-tag",{attrs:{type:"success",effect:"dark"}},[t._v(" Runing ")])],1),s("el-col",{staticStyle:{"line-height":"28px","text-align":"center"},attrs:{sm:24,md:8}},[t._v(" "+t._s(t.info.location)+" ")])],1)],1),s("div",{staticClass:"monitor",staticStyle:{"padding-top":"0px"}},[s("div",{staticClass:"monitor-content"},[s("el-row",{attrs:{gutter:10}},[s("el-col",{attrs:{sm:24,md:12}},[s("Cell",{attrs:{label:"系统",value:t.info.os.goOs,border:""}}),s("Cell",{attrs:{label:"内存",value:t.info.mem.used+"MB/"+t.info.mem.total+"MB",border:""}}),s("Cell",{attrs:{label:"交换",value:t.info.swap.used+"/"+t.info.swap.total,border:""}})],1),s("el-col",{attrs:{sm:24,md:12}},[s("Cell",{attrs:{label:"时间",value:t.info.os.time,border:""}}),s("Cell",{attrs:{label:"在线",value:t.info.bootTime+"小时",border:""}}),s("Cell",{attrs:{label:"硬盘",value:t.info.disk.used+"GB/"+t.info.disk.total+"GB",border:""}})],1)],1),s("el-row",{attrs:{gutter:10}},[s("el-col",{staticClass:"line",attrs:{sm:12,md:12}},[s("el-row",[s("el-col",{attrs:{span:"12",sm:8,md:8,xs:"12"}},[t._v(" 下载"),s("i",{staticClass:"el-icon-caret-bottom"})]),s("el-col",{staticClass:"line-value",attrs:{span:"12",sm:16,md:16,xs:"12"}},[t._v(" "+t._s(t.info.net.in)+"KB ")])],1)],1),s("el-col",{staticClass:"line",attrs:{sm:12,md:12}},[s("el-row",{attrs:{border:""}},[s("el-col",{attrs:{span:"12",sm:6,md:8}},[t._v(" 上传"),s("i",{staticClass:"el-icon-caret-top"})]),s("el-col",{staticClass:"line-value",attrs:{span:"12",sm:6,md:16}},[t._v(" "+t._s(t.info.net.out)+"KB ")])],1)],1)],1),s("el-row",{staticClass:"monitor-progress",attrs:{gutter:10}},[s("el-col",{attrs:{sm:24,md:4}},[t._v(" CPU ")]),s("el-col",{attrs:{sm:24,md:20}},[s("el-progress",{attrs:{color:t.customColors,"text-inside":!0,"stroke-width":24,percentage:t.info.cpu.percent}})],1)],1),s("el-row",{staticClass:"monitor-progress",attrs:{gutter:10}},[s("el-col",{attrs:{sm:24,md:4}},[t._v(" RAM ")]),s("el-col",{attrs:{sm:24,md:20}},[s("el-progress",{attrs:{color:t.customColors,"text-inside":!0,"stroke-width":24,percentage:t.info.mem.percent}})],1)],1),s("el-row",{staticClass:"monitor-progress",attrs:{gutter:10}},[s("el-col",{attrs:{sm:24,md:4}},[t._v(" 硬盘 ")]),s("el-col",{attrs:{sm:24,md:20}},[s("el-progress",{attrs:{color:t.customColors,"text-inside":!0,"stroke-width":24,percentage:t.info.disk.percent}})],1)],1)],1)])]):t._e()],1),t.info.os?s("el-card",{staticClass:"box-card"},[s("div",{staticClass:"clearfix",attrs:{slot:"header"},slot:"header"},[s("span",[t._v("服务器信息")])]),s("div",{staticClass:"monitor"},[s("Cell",{attrs:{label:"主机名称",value:t.info.os.hostName,border:""}}),s("Cell",{attrs:{label:"操作系统",value:t.info.os.goOs,border:""}}),s("Cell",{attrs:{label:"服务器IP",value:t.info.os.ip,border:""}}),s("Cell",{attrs:{label:"系统架构",value:t.info.os.arch,border:""}}),s("Cell",{attrs:{label:"CPU",value:t.info.cpu.cpuInfo[0].modelName,border:""}}),s("Cell",{attrs:{label:"当前时间",value:t.info.os.time}})],1)]):t._e()],1)]},proxy:!0}])})],1)},a=[],r=s("9eeb"),o=s("cc0b"),i={name:"Monitor",components:{Cell:r["a"]},data:function(){return{info:{},customColors:[{color:"#13ce66",percentage:20},{color:"#1890ff",percentage:40},{color:"#e6a23c",percentage:60},{color:"#1989fa",percentage:80},{color:"#F56C6C",percentage:100}],timer:null}},created:function(){var t=this;this.getServerInfo(),this.timer=setInterval((function(){t.getServerInfo()}),1e3)},beforeDestroy:function(){clearInterval(this.timer),this.timer=null},methods:{getServerInfo:function(){var t=this;Object(o["a"])().then((function(e){200===e.code&&(t.info=e)}))}}},n=i,c=(s("4499"),s("2877")),d=Object(c["a"])(n,l,a,!1,null,"2ac2a44d",null);e["default"]=d.exports},"9eeb":function(t,e,s){"use strict";var l=function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("div",{staticClass:"cell"},[s("div",{staticClass:"cell-inner",class:t.border?"border":""},[s("div",{staticClass:"cell-item"},[s("div",{staticClass:"cell-item-label"},[t.label?s("span",[t._v(" "+t._s(t.label)+" ")]):s("span",[t._t("label")],2)]),s("div",{staticClass:"cell-item-value"},[t.value?s("span",[t._v(" "+t._s(t.value)+" ")]):s("span",[t._t("value")],2)])]),s("div",{staticClass:"cell-item mt5"},[t.extra?s("span",[t._v(t._s(t.extra))]):s("span",[t._t("extra")],2)])])])},a=[],r={name:"Cell",props:{border:{type:Boolean,default:!1},label:{type:String,default:""},value:{type:String,default:""},extra:{type:String,default:""}}},o=r,i=(s("c9b5"),s("2877")),n=Object(i["a"])(o,l,a,!1,null,"8a6f07fe",null);e["a"]=n.exports},c8b1:function(t,e,s){},c9b5:function(t,e,s){"use strict";s("c8b1")},cc0b:function(t,e,s){"use strict";s.d(e,"a",(function(){return a}));var l=s("b775");function a(){return Object(l["a"])({url:"/api/v1/server-monitor",method:"get"})}},d689:function(t,e,s){}}]);