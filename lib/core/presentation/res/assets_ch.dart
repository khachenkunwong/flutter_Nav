import 'dart:ui';

List l = [];
List m = [];
List n = [];
List button1 = [];

Map sets = {
  0: [19.992118, 99.860694],
  1: [20.044707, 99.828704],
  2: [20.064509, 99.811011],
  3: [20.027004, 99.844637],
  4: [20.033889, 99.836202],
  5: [20.033839, 99.855696],
  6: [20.015930, 99.520620],
  7: [20.017781, 99.882237],
  8: [20.019234, 99.889824],
  9: [19.992970, 99.861781],
  10: [19.992596, 99.859079],
  11: [19.994223, 99.864782],
  12: [19.992283, 99.863845],
  13: [20.031752, 99.872231],
  14: [20.032092, 99.873869],
  15: [19.993666, 99.864708],
};

const List u = [
  images,
  images1,
  images2,
  images3,
  images4,
  images5,
  images6,
  images7,
  images8,
  images9,
  images10,
  images11,
  images12,
  images13,
  images14,
  images15,
];
const List<String> imagess = [
  "assets/images/im/imagess/000.jpg",
  "assets/images/im/imagess/001.jpg",
  "assets/images/im/imagess/002.jpg",
  "assets/images/im/imagess/003.jpg",
  "assets/images/im/imagess/004.jpg",
  "assets/images/im/imagess/005.jpg",
  "assets/images/im/imagess/006.jpg",
  "assets/images/im/imagess/007.jpg",
  "assets/images/im/imagess/008.jpg",
  "assets/images/im/imagess/009.jpg",
  "assets/images/im/imagess/010.jpg",
  "assets/images/im/imagess/011.jpg",
  "assets/images/im/imagess/012.jpg",
  "assets/images/im/imagess/013.jpg",
  "assets/images/im/imagess/014.jpg",
  "assets/images/im/imagess/015.jpg",
  // target
];

const List<String> images = [
  // target
  "assets/images/im/images/000.jpg",
  "assets/images/im/images/001.jpg",
  "assets/images/im/images/002.jpg",
  "assets/images/im/images/003.jpg",
  "assets/images/im/images/004.jpg",
  "assets/images/im/images/005.jpg",
  "assets/images/im/images/006.jpg",
  "assets/images/im/images/007.jpg",
  "assets/images/im/images/008.jpg",
  "assets/images/im/images/009.jpg",
  "assets/images/im/images/010.jpg",
  "assets/images/im/images/011.jpg",
  "assets/images/im/images/012.jpg",
  "assets/images/im/images/013.jpg",
  "assets/images/im/images/014.jpg",
  "assets/images/im/images/015.jpg",
  // target
];
const List<String> images1 = [
  "assets/images/im/images1/000.jpg",
  "assets/images/im/images1/001.jpg",
  "assets/images/im/images1/002.jpg",
  "assets/images/im/images1/003.jpg",
  "assets/images/im/images1/004.jpg",
  "assets/images/im/images1/005.jpg",
  "assets/images/im/images1/006.jpg",
  "assets/images/im/images1/007.jpg",
  // target
];
const List<String> images2 = [
  // target
  "assets/images/im/images2/000.jpg",
  "assets/images/im/images2/001.jpg",
  "assets/images/im/images2/002.jpg",
  "assets/images/im/images2/003.jpg",
  "assets/images/im/images2/004.jpg",
  "assets/images/im/images2/005.jpg",
  "assets/images/im/images2/006.jpg",
];
const List<String> images3 = [
  // target
  "assets/images/im/images3/000.jpg",
  "assets/images/im/images3/001.jpg",
  "assets/images/im/images3/002.jpg",
  "assets/images/im/images3/003.jpg",
  "assets/images/im/images3/004.jpg",
  "assets/images/im/images3/005.jpg",
  "assets/images/im/images3/006.jpg",
  "assets/images/im/images3/007.jpg",
  "assets/images/im/images3/008.jpg",
  "assets/images/im/images3/009.jpg",
  "assets/images/im/images3/010.jpg",
  "assets/images/im/images3/011.jpg",
  "assets/images/im/images3/012.jpg",
  "assets/images/im/images3/013.jpg",
  "assets/images/im/images3/014.jpg",
  "assets/images/im/images3/015.jpg",
  "assets/images/im/images3/016.jpg",
  "assets/images/im/images3/017.jpg",
];
const List<String> images4 = [
  // target
  "assets/images/im/images4/000.jpg",
  "assets/images/im/images4/001.jpg",
  "assets/images/im/images4/002.jpg",
  "assets/images/im/images4/003.jpg",
  "assets/images/im/images4/004.jpg",
  "assets/images/im/images4/005.jpg",
  "assets/images/im/images4/006.jpg",
  "assets/images/im/images4/007.jpg",
  "assets/images/im/images4/008.jpg",
  "assets/images/im/images4/009.jpg",
  "assets/images/im/images4/010.jpg",
  "assets/images/im/images4/011.jpg",
  "assets/images/im/images4/012.jpg",
  "assets/images/im/images4/013.jpg",
  "assets/images/im/images4/014.jpg",
  "assets/images/im/images4/015.jpg",
  "assets/images/im/images4/016.jpg",
  "assets/images/im/images4/017.jpg",
  "assets/images/im/images4/018.jpg",
  "assets/images/im/images4/019.jpg",
];
const List<String> images5 = [
  // target
  "assets/images/im/images5/000.jpg",
  "assets/images/im/images5/001.jpg",
  "assets/images/im/images5/002.jpg",
  "assets/images/im/images5/003.jpg",
  "assets/images/im/images5/004.jpg",
  "assets/images/im/images5/005.jpg",
  "assets/images/im/images5/006.jpg",
  "assets/images/im/images5/007.jpg",
  "assets/images/im/images5/008.jpg",
  "assets/images/im/images5/009.jpg",
  "assets/images/im/images5/010.jpg",
  "assets/images/im/images5/011.jpg",
  "assets/images/im/images5/012.jpg",
  "assets/images/im/images5/013.jpg",
  "assets/images/im/images5/014.jpg",
  "assets/images/im/images5/015.jpg",
  "assets/images/im/images5/016.jpg",
  "assets/images/im/images5/017.jpg",

];
const List<String> images6 = [
  // target
  "assets/images/im/images6/000.jpg",
  "assets/images/im/images6/001.jpg",
  "assets/images/im/images6/002.jpg",
  "assets/images/im/images6/003.jpg",
  "assets/images/im/images6/004.jpg",
  "assets/images/im/images6/005.jpg",
  "assets/images/im/images6/006.jpg",


];
const List<String> images7 = [
  // target
  "assets/images/im/images7/000.jpg",
  "assets/images/im/images7/001.jpg",
  "assets/images/im/images7/002.jpg",
  "assets/images/im/images7/003.jpg",
  "assets/images/im/images7/004.jpg",
  "assets/images/im/images7/005.jpg",
  "assets/images/im/images7/006.jpg",
  "assets/images/im/images7/007.jpg",
  "assets/images/im/images7/008.jpg",
  "assets/images/im/images7/009.jpg",
  "assets/images/im/images7/010.jpg",
  "assets/images/im/images7/011.jpg",
  "assets/images/im/images7/012.jpg",
  "assets/images/im/images7/013.jpg",
  "assets/images/im/images7/014.jpg",
  "assets/images/im/images7/015.jpg",
  "assets/images/im/images7/016.jpg",
  "assets/images/im/images7/017.jpg",
];
const List<String> images8 = [
  // target
  "assets/images/im/images8/000.jpg",
  "assets/images/im/images8/001.jpg",
  "assets/images/im/images8/002.jpg",
  "assets/images/im/images8/003.jpg",
  "assets/images/im/images8/004.jpg",
  "assets/images/im/images8/005.jpg",
  "assets/images/im/images8/006.jpg",
  "assets/images/im/images8/007.jpg",
  "assets/images/im/images8/008.jpg",
  "assets/images/im/images8/009.jpg",
  "assets/images/im/images8/010.jpg",
  "assets/images/im/images8/011.jpg",
  "assets/images/im/images8/012.jpg",
  "assets/images/im/images8/013.jpg",
  "assets/images/im/images8/014.jpg",
  "assets/images/im/images8/015.jpg",
  "assets/images/im/images8/016.jpg",
  "assets/images/im/images8/017.jpg",
];
const List<String> images9 = [
  // target
  "assets/images/im/images9/000.jpg",
  "assets/images/im/images9/001.jpg",
  "assets/images/im/images9/002.jpg",
  "assets/images/im/images9/003.jpg",
  "assets/images/im/images9/004.jpg",
  "assets/images/im/images9/005.jpg",
  "assets/images/im/images9/006.jpg",
  "assets/images/im/images9/007.jpg",
  "assets/images/im/images9/008.jpg",
  "assets/images/im/images9/009.jpg",
  "assets/images/im/images9/010.jpg",
  "assets/images/im/images9/011.jpg",
  "assets/images/im/images9/012.jpg",
  "assets/images/im/images9/013.jpg",
  "assets/images/im/images9/014.jpg",
  "assets/images/im/images9/015.jpg",
  "assets/images/im/images9/016.jpg",
  "assets/images/im/images9/017.jpg",
  "assets/images/im/images9/018.jpg",
  "assets/images/im/images9/019.jpg",
  "assets/images/im/images9/020.jpg",
];
const List<String> images10 = [
  // target
  "assets/images/im/images10/000.jpg",
  "assets/images/im/images10/001.jpg",
  "assets/images/im/images10/002.jpg",
  "assets/images/im/images10/003.jpg",
  "assets/images/im/images10/004.jpg",
  "assets/images/im/images10/005.jpg",
  "assets/images/im/images10/006.jpg",
  "assets/images/im/images10/007.jpg",
  "assets/images/im/images10/008.jpg",
  "assets/images/im/images10/009.jpg",
  "assets/images/im/images10/010.jpg",
  "assets/images/im/images10/011.jpg",

];
const List<String> images11 = [
  // target
  "assets/images/im/images11/000.jpg",
  "assets/images/im/images11/001.jpg",
  "assets/images/im/images11/002.jpg",
  "assets/images/im/images11/003.jpg",
  "assets/images/im/images11/004.jpg",
  "assets/images/im/images11/005.jpg",
  "assets/images/im/images11/006.jpg",
  "assets/images/im/images11/007.jpg",
  "assets/images/im/images11/008.jpg",
  "assets/images/im/images11/009.jpg",
  "assets/images/im/images11/010.jpg",
  "assets/images/im/images11/011.jpg",
  "assets/images/im/images11/012.jpg",
  "assets/images/im/images11/013.jpg",
  "assets/images/im/images11/014.jpg",

];
const List<String> images12 = [
  // target
  "assets/images/im/images12/000.jpg",
  "assets/images/im/images12/001.jpg",
  "assets/images/im/images12/002.jpg",
  "assets/images/im/images12/003.jpg",
  "assets/images/im/images12/004.jpg",
  "assets/images/im/images12/005.jpg",
  "assets/images/im/images12/006.jpg",
  "assets/images/im/images12/007.jpg",
  "assets/images/im/images12/008.jpg",
  "assets/images/im/images12/009.jpg",
  "assets/images/im/images12/010.jpg",
  "assets/images/im/images12/011.jpg",
  "assets/images/im/images12/012.jpg",
  "assets/images/im/images12/013.jpg",
];
const List<String> images13 = [
  // target
  "assets/images/im/images13/000.jpg",
  "assets/images/im/images13/001.jpg",
  "assets/images/im/images13/002.jpg",
  "assets/images/im/images13/003.jpg",
  "assets/images/im/images13/004.jpg",
  "assets/images/im/images13/005.jpg",
  "assets/images/im/images13/006.jpg",
  "assets/images/im/images13/007.jpg",
  "assets/images/im/images13/008.jpg",
  "assets/images/im/images13/009.jpg",
  "assets/images/im/images13/010.jpg",
  "assets/images/im/images13/011.jpg",
  "assets/images/im/images13/012.jpg",

];
const List<String> images14 = [
  // target
  "assets/images/im/images14/000.jpg",
  "assets/images/im/images14/001.jpg",
  "assets/images/im/images14/002.jpg",
  "assets/images/im/images14/003.jpg",
  "assets/images/im/images14/004.jpg",
  "assets/images/im/images14/005.jpg",
  "assets/images/im/images14/006.jpg",
  "assets/images/im/images14/007.jpg",
  "assets/images/im/images14/008.jpg",
  "assets/images/im/images14/009.jpg",
  "assets/images/im/images14/010.jpg",
  "assets/images/im/images14/011.jpg",
  "assets/images/im/images14/012.jpg",
  "assets/images/im/images14/013.jpg",
];
const List<String> images15 = [
  // target
  "assets/images/im/images15/000.jpg",
  "assets/images/im/images15/001.jpg",
  "assets/images/im/images15/002.jpg",
  "assets/images/im/images15/003.jpg",
  "assets/images/im/images15/004.jpg",
  "assets/images/im/images15/005.jpg",
  "assets/images/im/images15/006.jpg",
  "assets/images/im/images15/007.jpg",
  "assets/images/im/images15/008.jpg",
  "assets/images/im/images15/009.jpg",
  "assets/images/im/images15/010.jpg",
  "assets/images/im/images15/011.jpg",
  "assets/images/im/images15/012.jpg",
  "assets/images/im/images15/013.jpg",
  "assets/images/im/images15/014.jpg",
  "assets/images/im/images15/015.jpg",
  "assets/images/im/images15/016.jpg",
  "assets/images/im/images15/017.jpg",
  "assets/images/im/images15/018.jpg",
];


const List<String> hardtext = [
  //เเครอด ผัก ผมไม้
  "黑屋文化艺术博物馆（黑庙）",
  "囊叻瀑布",
  "梯田",
  "客凉稻田餐厅",
  "崇勒草莓园民舍",
  "泰北兰纳传统按摩保健中心",
  "爷爷有机菠萝种植园",
  "红土山陶房",
  "长颈族村",
  "Some Sunday magic  餐厅",
  "Give green绿色食品餐厅",
  "Di Angello 意大利正宗披萨店",
  "盒子咖啡馆",
  "巴桑咖啡馆",
  "普叻烤鸡店",
  "九号咖啡馆",
];

const List<String> hardtext1 = [
  //เเครอด ผัก ผมไม้
  "黑屋文化艺术博物馆（黑庙）",
  "囊叻瀑布",
  "梯田",
  "客凉稻田餐厅",
  "崇勒草莓园民舍",
  "泰北兰纳传统按摩保健中心",
  "爷爷有机菠萝种植园",
  "红土山陶房",
  "长颈族村",
  "Some Sunday magic  餐厅",
  "Give green绿色食品餐厅",
  "Di Angello 意大利正宗披萨店",
  "盒子咖啡馆",
  "巴桑咖啡馆",
  "普叻烤鸡店",
  "九号咖啡馆",
];

const List<String> name = [
  "黑屋文化艺术博物馆（黑庙）",
  "囊叻瀑布",
  "梯田",
  "客凉稻田餐厅",
  "崇勒草莓园民舍",
  "泰北兰纳传统按摩保健中心",
  "爷爷有机菠萝种植园",
  "红土山陶房",
  "长颈族村",
  "Some Sunday magic  餐厅",
  "Give green绿色食品餐厅",
  "Di Angello 意大利正宗披萨店",
  "盒子咖啡馆",
  "巴桑咖啡馆",
  "普叻烤鸡店",
  "九号咖啡馆",
];
const List<String> history = [
  //เเครอด ผัก ผมไม้
  "景点介绍：这是一座用于存放并展览塔顽·达察尼（Thawan Duchanee） 泰国艺术家的私人古董、艺术品的博物馆，在这一片100多亩的土地上，里面建有41座各式的建筑，其中大部分的设计灵感来愿于历史的变迁：1.木结构时期 2.陶器时期3.混凝土时期4. 房屋及凉亭时期，此外，这里还适合寻找艺术灵感的好地方",
  "自然景区位于清莱Nang Lae乡，这里还被誉为当地的母亲河，影响了当地居民的生活于发展。另外，瀑布的水源环境清幽，景色优美，休闲的好去处",
  "这里坐落着几个少数民族古寨，是高原居民世世代代留下的杰作。经过千百年的各族人民的辛勤的劳动，依地势开垦了层层壮观的梯田。景观壮美，属于大自然景区绝佳景区，这里游客们还可体验一下农家生活（种植水稻）以及少数民族（拉祜、哈尼）风情。",
  "这一家小清新餐馆坐落于一望无际的田园，餐厅是由祖先传下来，据说最初是kru  La (奶奶）带着孙子参观农家田园，在大城市长大的孙子一看到水稻 螃蟹 小鱼就感兴趣 ，因此对其提出各种问题 。随后奶奶觉得这里可以让后代学习了解农家生活、且能更加了解家乡的各家文化。奶奶从竹木建造凉亭，此外还沿着田边构造了竹木桥 ，随后 游客渐渐光临，游客们见到此地的田园令游客们想在大自然环境中喝咖啡。因优美的山、田园风格而取了 tung kieng doi 餐厅。",
  "chom doi 草莓田园,这里是清莱种草莓的绝佳胜地之一，有机的种植使草莓的味道更好，营养更丰富 。周围还种着鲜艳的万寿花 开放时间：早上06.00至晚上18.00",
  "本土泰式Lanna 传统按摩位于清莱Nang lea 县，感受泰北清莱文化，体验传统兰纳正宗的按摩！如：敲筋按摩法、草药火疗及草药熏蒸治疗多种可选择。",
  "自然的田园风光，参观insee爷爷菠萝种植园可了解更多的关于清莱最佳蜂蜜菠萝（Nang lea)品种，还可以品尝新鲜的菠萝,相对普通菠萝，这里的菠萝口感更加细腻，浓郁脆甜，肉质柔软纤维少，不塞牙。成熟后的菠萝浓香四溢，甜美可口，毫不酸涩，清莱的菠萝还被“国家地形地貌”指示蜂蜜菠萝只需在清莱Nang lea 县种植",
  "Doi Din Dang 的陶器属于泰国著名产地之一，这里所展现着各种各样的陶器艺品由Somluk puntibun 陶艺師设计，采用当地的粘土及人工捏制而成。这些艺品全都通过人手工制作",
  "位于泰北地区清莱五族村的长颈族村是个文化景点，除了长颈族这里还有哈尼族、瑶族、拉祜族跨境而居，村里还展现民族文化及艺术，让游客体验泰北少数民族的民俗风情",
  "色香味俱全 菜色精致  品种多样 黑庙附近白楼餐厅文艺范儿。",
  "黑庙附近乡村风格环境质朴 清新  菜品健康 地道特色餐厅，主营蔬菜和沙拉美食 每道菜无添加味精调味 ",
  "西餐意式手工披萨，现做现烤用料讲究，选用独特的配方（意大利进口），绝无任何食品添加剂，皮薄料多，外层香脆，内层柔软的口感。另外店内还有其他意式餐：意式面食  菠菜奶酪 千层面 沙拉 及意大利面 。餐厅靠近Nang Lea 分行—农业合作银行，黑庙对面",
  "位于曼谷医院（清莱分店）有着一家浪漫文艺的小咖啡馆，清新淡雅，文艺浪漫，loft 风格。价格实惠，追求卓越服务尽善尽美，全心全意为客户服务。",
  "Pasang 是一家钢结构建筑的咖啡馆，店里应用清莱著名本土菠萝（Nang lea品种）调制而成独特口干的咖啡，只让你陶醉在咖啡香里。",
  "一家清莱当地美食，位于皇太后医院（清莱分店）每一道菜具独特别样。香气四溢的烤鸡、脆皮嫩肉的烤鸡配上泰式木瓜沙拉、碳烤猪颈肉、猪肉铺等",
  "Lofe 风格的咖啡馆临着农业合作银行（黑庙附近），环境优美，可口菜肴，含有泰餐、西餐。",
];

const List<String> history1 = [
  //เเครอด ผัก ผมไม้
  "景点介绍：这是一座用于存放并展览塔顽·达察尼（Thawan Duchanee） 泰国艺术家..",
  "自然景区位于清莱Nang Lae乡，这里还被誉为当地的母亲河，影响了当地居民的生活于..",
  "这里坐落着几个少数民族古寨，是高原居民世世代代留下的杰作。经过千百年的各族人民..",
  "这一家小清新餐馆坐落于一望无际的田园，餐厅是由祖先传下来，据说最初是kru  La ..",
  "chom doi 草莓田园,这里是清莱种草莓的绝佳胜地之一，有机的种植使草莓的味道更好，..",
  "本土泰式Lanna 传统按摩位于清莱Nang lea 县，感受泰北清莱文化，体验传统兰纳正宗..",
  "自然的田园风光，参观insee爷爷菠萝种植园可了解更多的关于清莱最佳蜂蜜菠萝..",
  "Doi Din Dang 的陶器属于泰国著名产地之一，这里所展现着各种各样的陶器艺品由..",
  "位于泰北地区清莱五族村的长颈族村是个文化景点，除了长颈族这里还有哈尼族、瑶族、..",
  "色香味俱全 菜色精致  品种多样 黑庙附近白楼餐厅文艺范儿。",
  "黑庙附近乡村风格环境质朴 清新  菜品健康 地道特色餐厅，主营蔬菜和沙拉美食 ..",
  "西餐意式手工披萨，现做现烤用料讲究，选用独特的配方（意大利进口），绝无任何食品..",
  "位于曼谷医院（清莱分店）有着一家浪漫文艺的小咖啡馆，清新淡雅，文艺浪漫，loft ..",
  "Pasang 是一家钢结构建筑的咖啡馆，店里应用清莱著名本土菠萝（Nang lea品种）调制..",
  "一家清莱当地美食，位于皇太后医院（清莱分店）每一道菜具独特别样。香气四溢的烤鸡、..",
  "Lofe 风格的咖啡馆临着农业合作银行（黑庙附近），环境优美，可口菜肴，含有泰餐、..",
];

const List<String> time_available = [
  "周一至周日早上 09.00至晚上17.00",
  "周一至周日 早上 09.00至晚上17.00",
  "周一至周日早上 08.00至晚上17.00",
  "周一至周日 全天开放 早上 09.00至晚上20.00",
  "早上 06.00至晚上18.00",
  "周一至周日  09.00-17.00",
  "周一至周日  09.00-17.00",
  "周一至周六  08.00-17.00",
  "周一至周日  07.00-19.00",
  "10.00-20.00  周三：全天休息 ",
  "周一至周日  07.00-19.00",
  "10.00-21.00  周一 ：全天休息",
  "周一至周五  07.00-18.00 周六至周日 09.00-18.00",
  "周一至周六  09.00-18.00",
  "周一至周日  08.00-17.00",
  "周一至周日  08.00-18.00",
];
const List<String> place_des = [
  "333 Moo 13 Nanglae, Muang, Chiang Rai, 57100 Thailand",
  "Baan Nang Lae Nai Moo 7 Nang Lae, Chiang Rai, Thailand",
  "Baan Nang Lae Nai Moo 7 Nang Lae, Chiang Rai, Thailand",
  "571 Baan Nang Lae Nai Moo 7 Nang Lae, Chiang Rai, Thailand",
  "341 Moo 7 Baan Nang Lae Nai, Nang Lae, Chiang Rai, Thailand",
  "Ban Pa Ruak Moo 8 Nang Lae, Chiang Rai, Thailand",
  "Baan Pasang Wiwat Moo 10 Nang Lae, Chiang Rai, Thailand",
  "49 Baan Pa Or Moo 6 Nang Lae, Chiang Rai, Thailand",
  "Baan Pa Or Moo 6 Nang Lae, Chiang Rai, Thailand",
  "280 Moo 13 Baan Mae Pu Kha Nang Lae, Chiang Rai, Thailand",
  "：300 Baan Moo 3 Mae Pu Kha Nang Lae, Chiang Rai, Thailand",
  "195 Moo 2 Baan Nang Lae, Nang Lae, Chiang Rai, Thailand",
  "241 Baan Moo 13 Mae Pu Kha Nang Lae, Chiang Rai, Thailand",
  "279 Moo 10 Baan Pasang Wiwat Nang Lae, Chiang Rai, Thailand",
  "165 Moo 10 Baan Pasang Wiwat Nang Lae, Chiang Rai, Thailand",
  "Moo 2 Baan Nang Lae, Nang Lae, Chiang Rai, Thailand",
];

const List<String> note = [
  "http://www.thawan-duchanee.com  门票价 80 泰铢（本地人及外国人）",
  "http://www.nanglae.go.th/  免费进入",
  "http://www.nanglae.go.th/  具体以景区实际公示信息为准",
  "https://www.facebook.com/tungkiengdoi/  具体以景区实际公示信息为准播种水稻时间：第一时段是七月份开始播种水稻且在十一月末收割水稻第二个时段是从一月份播种水稻，且在五月份末收割水稻推荐菜：菠萝冰淇淋",
  "https://web.facebook.com/pg/สวนสตรอเบอร์รี่-ชมดอย-308206636041016/photos/?ref=page_internal 免费参观询问酒店以及帐篷（含早）十月份到三月份 向外开放参观草莓园四月份到九月份 向外开放参观万寿菊园",
  "https://www.facebook.com/%E0%B9%82%E0%B8%AE%E0%B8%87%E0%B8%AE%E0%B8%AD%E0%B8%A1%E0%B8%9C%E0%B8%8D%E0%B9%8B%E0%B8%B2-%E0%B9%82%E0%B8%AE%E0%B8%87%E0%B8%A2%E0%B8%B2%E0%B8%AB%E0%B8%A1%E0%B8%AD%E0%B9%80%E0%B8%A1%E0%B8%B7%E0%B8%AD%E0%B8%87%E0%B8%A5%E0%B9%89%E0%B8%B2%E0%B8%99%E0%B8%99%E0%B8%B2-%E0%B8%93%E0%B8%A8%E0%B8%B9%E0%B8%99%E0%B8%A2%E0%B9%8C%E0%B9%80%E0%B8%A3%E0%B8%B5%E0%B8%A2%E0%B8%99%E0%B8%A3%E0%B8%B9%E0%B9%89%E0%B8%8A%E0%B8%B8%E0%B8%A1%E0%B8%8A%E0%B8%99%E0%B8%95%E0%B8%B3%E0%B8%9A%E0%B8%A5%E0%B8%99%E0%B8%B2%E0%B8%87%E0%B9%81%E0%B8%A5-1409981902398090/ 具体以景区实际公示信息为准更多信息请电话咨询草药火疗及草药熏蒸治疗影响控制体重",
  "https://www.facebook.com/%E0%B8%97%E0%B9%88%E0%B8%AD%E0%B8%87%E0%B9%80%E0%B8%97%E0%B8%B5%E0%B9%88%E0%B8%A2%E0%B8%A7%E0%B8%8A%E0%B8%B8%E0%B8%A1%E0%B8%8A%E0%B8%99%E0%B8%9A%E0%B9%89%E0%B8%B2%E0%B8%99%E0%B8%9B%E0%B9%88%E0%B8%B2%E0%B8%8B%E0%B8%B2%E0%B8%87%E0%B8%A7%E0%B8%B4%E0%B8%A7%E0%B8%B1%E0%B8%92%E0%B8%99%E0%B9%8C-193802381202715/ 具体以景区实际公示信息为准每年的四月份至六月份是最适合种植菠萝的季节",
  "http://www.dddpottery.com/index.html 具体以景区实际公示信息为准 这里还向游客提供咖啡",
  "http://www.unionhilltribe.com/  外国人100泰铢/位， 泰国人200泰铢/位",
  "https://www.facebook.com/Somesundaymagic/  另外咨询泰北咖喱面条",
  "https://www.facebook.com/givegreenfarm/ 另外咨询烹饪课程（cooking class)木棉花蕊米线（Nam Ngiao）",
  "https://www.facebook.com/diangelloitalianpizza 另外咨询火腿 芝士 菠萝薄皮披萨 ",
  "Facebook: BoxCafe Chiangrai 另外咨询焦糖鲜奶",
  "https://www.facebook.com/pasangchiangrai/ pasang 咖啡馆采用优良的咖啡豆口感独特和泰国清莱蜜蜂菠萝一起上的独特套餐每年的四月份至六月份是菠萝丰收的季节推荐： Nang lea 菠萝咖啡",
  "Facebook: chickenphulae 推荐：泰式木瓜沙拉、烤鸡",
  "Facebook:๙ café Chiangrai 推荐：黑咖啡",
];
const List<String> phone = [
  "053-776-333",
  "053-706-017",
  "053-706-017",
  "088-700-0842 088-884-5533",
  "082-193-2423",
  "090-280-6924",
  "090-317-5429",
  "053-705-291",
  "053-705-337 081-993-3827",
  "083-5814459",
  "081-090-1805",
  "080-286-8895 093-593-0475",
  "08-0110-5665",
  "063-783-3388",
  "081-486-1424",
  "089-758-1198"
];

Map<int, Color> color = {
  50: Color.fromRGBO(147, 215, 228, .1),
  100: Color.fromRGBO(147, 215, 228, .2),
  200: Color.fromRGBO(147, 215, 228, .3),
  300: Color.fromRGBO(147, 215, 228, .4),
  400: Color.fromRGBO(147, 215, 228, .5),
  500: Color.fromRGBO(147, 215, 228, .6),
  600: Color.fromRGBO(147, 215, 228, .7),
  700: Color.fromRGBO(147, 215, 228, .8),
  800: Color.fromRGBO(147, 215, 228, .9),
  900: Color.fromRGBO(147, 215, 228, 1)
};
