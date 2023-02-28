"use strict";(self.webpackChunkmy_website=self.webpackChunkmy_website||[]).push([[922],{3905:(e,t,a)=>{a.d(t,{Zo:()=>u,kt:()=>b});var n=a(7294);function r(e,t,a){return t in e?Object.defineProperty(e,t,{value:a,enumerable:!0,configurable:!0,writable:!0}):e[t]=a,e}function i(e,t){var a=Object.keys(e);if(Object.getOwnPropertySymbols){var n=Object.getOwnPropertySymbols(e);t&&(n=n.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),a.push.apply(a,n)}return a}function s(e){for(var t=1;t<arguments.length;t++){var a=null!=arguments[t]?arguments[t]:{};t%2?i(Object(a),!0).forEach((function(t){r(e,t,a[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(a)):i(Object(a)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(a,t))}))}return e}function o(e,t){if(null==e)return{};var a,n,r=function(e,t){if(null==e)return{};var a,n,r={},i=Object.keys(e);for(n=0;n<i.length;n++)a=i[n],t.indexOf(a)>=0||(r[a]=e[a]);return r}(e,t);if(Object.getOwnPropertySymbols){var i=Object.getOwnPropertySymbols(e);for(n=0;n<i.length;n++)a=i[n],t.indexOf(a)>=0||Object.prototype.propertyIsEnumerable.call(e,a)&&(r[a]=e[a])}return r}var l=n.createContext({}),c=function(e){var t=n.useContext(l),a=t;return e&&(a="function"==typeof e?e(t):s(s({},t),e)),a},u=function(e){var t=c(e.components);return n.createElement(l.Provider,{value:t},e.children)},p="mdxType",m={inlineCode:"code",wrapper:function(e){var t=e.children;return n.createElement(n.Fragment,{},t)}},d=n.forwardRef((function(e,t){var a=e.components,r=e.mdxType,i=e.originalType,l=e.parentName,u=o(e,["components","mdxType","originalType","parentName"]),p=c(a),d=r,b=p["".concat(l,".").concat(d)]||p[d]||m[d]||i;return a?n.createElement(b,s(s({ref:t},u),{},{components:a})):n.createElement(b,s({ref:t},u))}));function b(e,t){var a=arguments,r=t&&t.mdxType;if("string"==typeof e||r){var i=a.length,s=new Array(i);s[0]=d;var o={};for(var l in t)hasOwnProperty.call(t,l)&&(o[l]=t[l]);o.originalType=e,o[p]="string"==typeof e?e:r,s[1]=o;for(var c=2;c<i;c++)s[c]=a[c];return n.createElement.apply(null,s)}return n.createElement.apply(null,a)}d.displayName="MDXCreateElement"},3039:(e,t,a)=>{a.r(t),a.d(t,{assets:()=>l,contentTitle:()=>s,default:()=>m,frontMatter:()=>i,metadata:()=>o,toc:()=>c});var n=a(7462),r=(a(7294),a(3905));const i={sidebar_position:9,sidebar_label:"Optimizaci\xf3n"},s="Optimizaci\xf3n de consultas",o={unversionedId:"Optimizacion/README",id:"Optimizacion/README",title:"Optimizaci\xf3n de consultas",description:"Realizar una consulta \xf3ptima dentro de una base de datos es sumamente importante. Los DBMS utilizan ciertas t\xe9cnicas que se basan en heur\xedsticas y estimaciones basadas en costos. La primera se basa en \xe1lgebra relacional de bases de datos, mientras que la segunda se basa en estimar costos de distintas operaciones utilizando distintas estructuras de almacenamiento f\xedsico (puede ser o no estructuras auxiliares).",source:"@site/docs/08-Optimizacion/README.md",sourceDirName:"08-Optimizacion",slug:"/Optimizacion/",permalink:"/bases-datos/docs/Optimizacion/",draft:!1,tags:[],version:"current",sidebarPosition:9,frontMatter:{sidebar_position:9,sidebar_label:"Optimizaci\xf3n"},sidebar:"tutorialSidebar",previous:{title:"Organizaci\xf3n f\xedsica",permalink:"/bases-datos/docs/Fisico/"},next:{title:"Transacciones",permalink:"/bases-datos/docs/Transacciones/"}},l={},c=[{value:"Presentaciones",id:"presentaciones",level:2},{value:"Material suplemental",id:"material-suplemental",level:2}],u={toc:c},p="wrapper";function m(e){let{components:t,...a}=e;return(0,r.kt)(p,(0,n.Z)({},u,a,{components:t,mdxType:"MDXLayout"}),(0,r.kt)("h1",{id:"optimizaci\xf3n-de-consultas"},"Optimizaci\xf3n de consultas"),(0,r.kt)("p",null,"Realizar una consulta \xf3ptima dentro de una base de datos es sumamente importante. Los DBMS utilizan ciertas t\xe9cnicas que se basan en heur\xedsticas y estimaciones basadas en costos. La primera se basa en \xe1lgebra relacional de bases de datos, mientras que la segunda se basa en estimar costos de distintas operaciones utilizando distintas estructuras de almacenamiento f\xedsico (puede ser o no estructuras auxiliares)."),(0,r.kt)("h2",{id:"presentaciones"},"Presentaciones"),(0,r.kt)("ul",null,(0,r.kt)("li",{parentName:"ul"},(0,r.kt)("a",{parentName:"li",href:"https://github.com/sivanahamer/bases-datos/blob/main/08-Optimizacion/pres/08-optimizacion.pdf"},"Optimizaci\xf3n de consultas"))),(0,r.kt)("h2",{id:"material-suplemental"},"Material suplemental"),(0,r.kt)("p",null,"Se recomienda ver los siguientes materiales para repasar el contenido visto en clases."),(0,r.kt)("ul",null,(0,r.kt)("li",{parentName:"ul"},"Cap\xedtulo 8. S. Hamer. Bases de Datos (Notas)."),(0,r.kt)("li",{parentName:"ul"},"Cap\xedtulos 6, 18 y 19. R. Elmasri and S. Navathe, Fundamentals of database systems, 7th ed. Pearson, 2016."),(0,r.kt)("li",{parentName:"ul"},(0,r.kt)("a",{parentName:"li",href:"https://www.youtube.com/watch?v=tii7xcFilOA&list=PL6hGtHedy2Z4EkgY76QOcueU8lAC4o6c3&index=9"},"Relational algebra")),(0,r.kt)("li",{parentName:"ul"},(0,r.kt)("a",{parentName:"li",href:"https://bertwagner.com/category/sql/performance-tuning/execution-plans.html"},"SQL - Execution Plans")),(0,r.kt)("li",{parentName:"ul"},(0,r.kt)("a",{parentName:"li",href:"https://www.sqlservertutorial.net/sql-server-indexes/"},"SQL Server Indexes")),(0,r.kt)("li",{parentName:"ul"},(0,r.kt)("a",{parentName:"li",href:"https://www.toptal.com/sql-server/sql-database-tuning-for-developers"},"SQL Database Performance Tuning for Developers"))))}m.isMDXComponent=!0}}]);