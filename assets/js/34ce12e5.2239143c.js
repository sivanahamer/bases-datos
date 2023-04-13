"use strict";(self.webpackChunkmy_website=self.webpackChunkmy_website||[]).push([[552],{3905:(e,t,a)=>{a.d(t,{Zo:()=>p,kt:()=>f});var n=a(7294);function r(e,t,a){return t in e?Object.defineProperty(e,t,{value:a,enumerable:!0,configurable:!0,writable:!0}):e[t]=a,e}function o(e,t){var a=Object.keys(e);if(Object.getOwnPropertySymbols){var n=Object.getOwnPropertySymbols(e);t&&(n=n.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),a.push.apply(a,n)}return a}function s(e){for(var t=1;t<arguments.length;t++){var a=null!=arguments[t]?arguments[t]:{};t%2?o(Object(a),!0).forEach((function(t){r(e,t,a[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(a)):o(Object(a)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(a,t))}))}return e}function i(e,t){if(null==e)return{};var a,n,r=function(e,t){if(null==e)return{};var a,n,r={},o=Object.keys(e);for(n=0;n<o.length;n++)a=o[n],t.indexOf(a)>=0||(r[a]=e[a]);return r}(e,t);if(Object.getOwnPropertySymbols){var o=Object.getOwnPropertySymbols(e);for(n=0;n<o.length;n++)a=o[n],t.indexOf(a)>=0||Object.prototype.propertyIsEnumerable.call(e,a)&&(r[a]=e[a])}return r}var l=n.createContext({}),c=function(e){var t=n.useContext(l),a=t;return e&&(a="function"==typeof e?e(t):s(s({},t),e)),a},p=function(e){var t=c(e.components);return n.createElement(l.Provider,{value:t},e.children)},u="mdxType",d={inlineCode:"code",wrapper:function(e){var t=e.children;return n.createElement(n.Fragment,{},t)}},m=n.forwardRef((function(e,t){var a=e.components,r=e.mdxType,o=e.originalType,l=e.parentName,p=i(e,["components","mdxType","originalType","parentName"]),u=c(a),m=r,f=u["".concat(l,".").concat(m)]||u[m]||d[m]||o;return a?n.createElement(f,s(s({ref:t},p),{},{components:a})):n.createElement(f,s({ref:t},p))}));function f(e,t){var a=arguments,r=t&&t.mdxType;if("string"==typeof e||r){var o=a.length,s=new Array(o);s[0]=m;var i={};for(var l in t)hasOwnProperty.call(t,l)&&(i[l]=t[l]);i.originalType=e,i[u]="string"==typeof e?e:r,s[1]=i;for(var c=2;c<o;c++)s[c]=a[c];return n.createElement.apply(null,s)}return n.createElement.apply(null,a)}m.displayName="MDXCreateElement"},8275:(e,t,a)=>{a.r(t),a.d(t,{assets:()=>l,contentTitle:()=>s,default:()=>d,frontMatter:()=>o,metadata:()=>i,toc:()=>c});var n=a(7462),r=(a(7294),a(3905));const o={sidebar_position:3,sidebar_label:"Dise\xf1o conceptual"},s="Dise\xf1o conceptual",i={unversionedId:"conceptual/README",id:"conceptual/README",title:"Dise\xf1o conceptual",description:"En el ciclo de desarrollo tenemos las siguientes etapas:",source:"@site/docs/02-conceptual/README.md",sourceDirName:"02-conceptual",slug:"/conceptual/",permalink:"/bases-datos/docs/conceptual/",draft:!1,tags:[],version:"current",sidebarPosition:3,frontMatter:{sidebar_position:3,sidebar_label:"Dise\xf1o conceptual"},sidebar:"tutorialSidebar",previous:{title:"Introducci\xf3n",permalink:"/bases-datos/docs/introduccion/"},next:{title:"Dise\xf1o l\xf3gico",permalink:"/bases-datos/docs/logico/"}},l={},c=[{value:"Presentaciones",id:"presentaciones",level:2},{value:"Material suplemental",id:"material-suplemental",level:2}],p={toc:c},u="wrapper";function d(e){let{components:t,...a}=e;return(0,r.kt)(u,(0,n.Z)({},p,a,{components:t,mdxType:"MDXLayout"}),(0,r.kt)("h1",{id:"dise\xf1o-conceptual"},"Dise\xf1o conceptual"),(0,r.kt)("p",null,"En el ",(0,r.kt)("strong",{parentName:"p"},"ciclo de desarrollo")," tenemos las siguientes etapas:"),(0,r.kt)("ol",null,(0,r.kt)("li",{parentName:"ol"},"Obtener requerimientos."),(0,r.kt)("li",{parentName:"ol"},"Dise\xf1ar una soluci\xf3n."),(0,r.kt)("li",{parentName:"ol"},"Implementar una soluci\xf3n."),(0,r.kt)("li",{parentName:"ol"},"Probar el software (sean los requerimientos dise\xf1o o implementaci\xf3n).")),(0,r.kt)("p",null,"Por lo tanto, las bases de datos siguen el mismo ciclo que cualquier artefacto de software. Entonces, iniciaremos viendo c\xf3mo es que se obtienen los requerimientos de las bases de datos llamados ",(0,r.kt)("strong",{parentName:"p"},"requerimientos de datos")," y crear un ",(0,r.kt)("strong",{parentName:"p"},"dise\xf1o")," de estos requerimientos. Particularmente, dentro del proceso de dise\xf1o de bases de datos se inicia al ",(0,r.kt)("strong",{parentName:"p"},"dise\xf1ar conceptualmente"),". Este artefacto de dise\xf1o no hace referencia a detalles f\xedsicos de su almacenamiento. En nuestro caso, vamos a dise\xf1ar conceptualmente utilizando el ",(0,r.kt)("strong",{parentName:"p"},"modelo entidad relaci\xf3n extendido"),"."),(0,r.kt)("h2",{id:"presentaciones"},"Presentaciones"),(0,r.kt)("ul",null,(0,r.kt)("li",{parentName:"ul"},(0,r.kt)("a",{parentName:"li",href:"https://github.com/sivanahamer/bases-datos/blob/main/docs/02-conceptual/pres/02-er.pdf"},"Dise\xf1o conceptual: Entidad Relaci\xf3n")),(0,r.kt)("li",{parentName:"ul"},(0,r.kt)("a",{parentName:"li",href:"https://github.com/sivanahamer/bases-datos/blob/main/docs/02-conceptual/pres/02.5-eer.pdf"},"Dise\xf1o conceptual: Entidad Relaci\xf3n Extendido"))),(0,r.kt)("h2",{id:"material-suplemental"},"Material suplemental"),(0,r.kt)("p",null,"Se recomienda ver los siguientes materiales para repasar el contenido visto en clases."),(0,r.kt)("ul",null,(0,r.kt)("li",{parentName:"ul"},"Cap\xedtulo 2. S. Hamer. Bases de Datos (Notas)."),(0,r.kt)("li",{parentName:"ul"},"Cap\xedtulo 3. R. Elmasri and S. Navathe, Fundamentals of database systems, 7th ed. Pearson, 2016."),(0,r.kt)("li",{parentName:"ul"},"Cap\xedtulo 4 (hasta 4.3 incluido). R. Elmasri and S. Navathe, Fundamentals of database systems, 7th ed. Pearson, 2016.")))}d.isMDXComponent=!0}}]);