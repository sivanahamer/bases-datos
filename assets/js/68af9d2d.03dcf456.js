"use strict";(self.webpackChunkmy_website=self.webpackChunkmy_website||[]).push([[411],{3905:(e,a,t)=>{t.d(a,{Zo:()=>c,kt:()=>b});var s=t(7294);function n(e,a,t){return a in e?Object.defineProperty(e,a,{value:t,enumerable:!0,configurable:!0,writable:!0}):e[a]=t,e}function o(e,a){var t=Object.keys(e);if(Object.getOwnPropertySymbols){var s=Object.getOwnPropertySymbols(e);a&&(s=s.filter((function(a){return Object.getOwnPropertyDescriptor(e,a).enumerable}))),t.push.apply(t,s)}return t}function r(e){for(var a=1;a<arguments.length;a++){var t=null!=arguments[a]?arguments[a]:{};a%2?o(Object(t),!0).forEach((function(a){n(e,a,t[a])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(t)):o(Object(t)).forEach((function(a){Object.defineProperty(e,a,Object.getOwnPropertyDescriptor(t,a))}))}return e}function i(e,a){if(null==e)return{};var t,s,n=function(e,a){if(null==e)return{};var t,s,n={},o=Object.keys(e);for(s=0;s<o.length;s++)t=o[s],a.indexOf(t)>=0||(n[t]=e[t]);return n}(e,a);if(Object.getOwnPropertySymbols){var o=Object.getOwnPropertySymbols(e);for(s=0;s<o.length;s++)t=o[s],a.indexOf(t)>=0||Object.prototype.propertyIsEnumerable.call(e,t)&&(n[t]=e[t])}return n}var l=s.createContext({}),d=function(e){var a=s.useContext(l),t=a;return e&&(t="function"==typeof e?e(a):r(r({},a),e)),t},c=function(e){var a=d(e.components);return s.createElement(l.Provider,{value:a},e.children)},u="mdxType",p={inlineCode:"code",wrapper:function(e){var a=e.children;return s.createElement(s.Fragment,{},a)}},m=s.forwardRef((function(e,a){var t=e.components,n=e.mdxType,o=e.originalType,l=e.parentName,c=i(e,["components","mdxType","originalType","parentName"]),u=d(t),m=n,b=u["".concat(l,".").concat(m)]||u[m]||p[m]||o;return t?s.createElement(b,r(r({ref:a},c),{},{components:t})):s.createElement(b,r({ref:a},c))}));function b(e,a){var t=arguments,n=a&&a.mdxType;if("string"==typeof e||n){var o=t.length,r=new Array(o);r[0]=m;var i={};for(var l in a)hasOwnProperty.call(a,l)&&(i[l]=a[l]);i.originalType=e,i[u]="string"==typeof e?e:n,r[1]=i;for(var d=2;d<o;d++)r[d]=t[d];return s.createElement.apply(null,r)}return s.createElement.apply(null,t)}m.displayName="MDXCreateElement"},5185:(e,a,t)=>{t.r(a),t.d(a,{assets:()=>l,contentTitle:()=>r,default:()=>p,frontMatter:()=>o,metadata:()=>i,toc:()=>d});var s=t(7462),n=(t(7294),t(3905));const o={sidebar_position:2,sidebar_label:"Introducci\xf3n"},r="Introducci\xf3n a las bases de datos",i={unversionedId:"introduccion/README",id:"introduccion/README",title:"Introducci\xf3n a las bases de datos",description:"Las bases de datos son muy utilizadas hoy en d\xeda. Por ejemplo, la base de datos de Google nos permite realizar b\xfasquedas indexando billones de p\xe1ginas de la web. Otro ejemplo es cualquier medio social como Facebook, Instragam y Tik Tok que almacenan billones de videos, im\xe1genes, comentarios, amistades y seguidores. Otro sistema dentro del contexto nacional es EDUS que guarda toda la informaci\xf3n m\xe9dica nacional. Si bien las bases de datos est\xe1n presentes y utilizados en nuestro d\xeda a d\xeda, ocupamos entender c\xf3mo es que funcionan estos sistemas de bases de datos (DataBase Systems) con sus manejadores de sistema (DataBase Management Systems). Adem\xe1s, hay muchas particularidades de estos sistemas que los hacen diferentes de otros sistemas vistos en la carrera.",source:"@site/docs/01-introduccion/README.md",sourceDirName:"01-introduccion",slug:"/introduccion/",permalink:"/bases-datos/docs/introduccion/",draft:!1,tags:[],version:"current",sidebarPosition:2,frontMatter:{sidebar_position:2,sidebar_label:"Introducci\xf3n"},sidebar:"tutorialSidebar",previous:{title:"Clases",permalink:"/bases-datos/docs/"},next:{title:"Dise\xf1o conceptual",permalink:"/bases-datos/docs/conceptual/"}},l={},d=[{value:"Presentaciones",id:"presentaciones",level:2},{value:"Material suplemental",id:"material-suplemental",level:2}],c={toc:d},u="wrapper";function p(e){let{components:a,...t}=e;return(0,n.kt)(u,(0,s.Z)({},c,t,{components:a,mdxType:"MDXLayout"}),(0,n.kt)("h1",{id:"introducci\xf3n-a-las-bases-de-datos"},"Introducci\xf3n a las bases de datos"),(0,n.kt)("p",null,"Las ",(0,n.kt)("strong",{parentName:"p"},"bases de datos")," son muy utilizadas hoy en d\xeda. Por ejemplo, la base de datos de ",(0,n.kt)("a",{parentName:"p",href:"https://www.google.com/"},"Google")," nos permite realizar b\xfasquedas indexando billones de p\xe1ginas de la web. Otro ejemplo es cualquier medio social como ",(0,n.kt)("a",{parentName:"p",href:"https://www.facebook.com/"},"Facebook"),", ",(0,n.kt)("a",{parentName:"p",href:"https://www.instagram.com/"},"Instragam")," y ",(0,n.kt)("a",{parentName:"p",href:"https://www.tiktok.com/"},"Tik Tok")," que almacenan billones de videos, im\xe1genes, comentarios, amistades y seguidores. Otro sistema dentro del contexto nacional es ",(0,n.kt)("a",{parentName:"p",href:"https://www.ccss.sa.cr/appedus/"},"EDUS")," que guarda toda la informaci\xf3n m\xe9dica nacional. Si bien las bases de datos est\xe1n presentes y utilizados en nuestro d\xeda a d\xeda, ocupamos entender c\xf3mo es que funcionan estos ",(0,n.kt)("strong",{parentName:"p"},"sistemas de bases de datos")," (",(0,n.kt)("strong",{parentName:"p"},"D"),"ata",(0,n.kt)("strong",{parentName:"p"},"B"),"ase ",(0,n.kt)("strong",{parentName:"p"},"S"),"ystems) con sus manejadores de sistema (",(0,n.kt)("strong",{parentName:"p"},"D"),"ata",(0,n.kt)("strong",{parentName:"p"},"B"),"ase ",(0,n.kt)("strong",{parentName:"p"},"M"),"anagement ",(0,n.kt)("strong",{parentName:"p"},"S"),"ystems). Adem\xe1s, hay muchas particularidades de estos sistemas que los hacen diferentes de otros sistemas vistos en la carrera."),(0,n.kt)("p",null,"En este tema buscamos introducir el tema de bases de datos respondiendo las siguientes preguntas:"),(0,n.kt)("ul",null,(0,n.kt)("li",{parentName:"ul"},"\xbfPor qu\xe9 se ocupan bases de datos si podemos utilizar ",(0,n.kt)("em",{parentName:"li"},"spreadsheets")," como excel?"),(0,n.kt)("li",{parentName:"ul"},"\xbfQu\xe9 es una base de datos?"),(0,n.kt)("li",{parentName:"ul"},"\xbfCu\xe1les son las partes de una base de datos?"),(0,n.kt)("li",{parentName:"ul"},"\xbfC\xf3mo se puede utilizar las bases de datos?"),(0,n.kt)("li",{parentName:"ul"},"\xbfC\xf3mo han evolucionado las bases de datos?")),(0,n.kt)("h2",{id:"presentaciones"},"Presentaciones"),(0,n.kt)("ul",null,(0,n.kt)("li",{parentName:"ul"},(0,n.kt)("a",{parentName:"li",href:"https://github.com/sivanahamer/bases-datos/blob/main/docs/01-introduccion/pres/01-intro.pdf"},"Introducci\xf3n a las Bases de Datos"))),(0,n.kt)("h2",{id:"material-suplemental"},"Material suplemental"),(0,n.kt)("p",null,"Se recomienda ver los siguientes materiales para repasar el contenido visto en clases."),(0,n.kt)("ul",null,(0,n.kt)("li",{parentName:"ul"},"Cap\xedtulo 1. S. Hamer. Bases de Datos (Notas)."),(0,n.kt)("li",{parentName:"ul"},"Cap\xedtulos 1 y 2. R. Elmasri and S. Navathe, Fundamentals of database systems, 7th ed. Pearson, 2016."),(0,n.kt)("li",{parentName:"ul"},"Cap\xedtulo 1. A. Silberschatz, H. F. Korth, and S. Sudarshan, Database System Concepts, 7th ed. New York, NY: McGraw-Hill, 2020.")))}p.isMDXComponent=!0}}]);