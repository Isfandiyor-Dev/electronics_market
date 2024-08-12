// Kategoriyalar
import 'package:electronics_market/data/model/category_model.dart';
import 'package:electronics_market/data/model/product.dart';

class DataRepository {
  final categories = [
    CategoryModel(id: '0', name: 'All Categories'),
    CategoryModel(id: '1', name: 'Clothing'),
    CategoryModel(id: '2', name: 'Electronics'),
    CategoryModel(id: '3', name: 'Home & Kitchen'),
    CategoryModel(id: '4', name: 'Sports & Outdoors'),
  ];

// Mahsulotlar
  final products = [
    Product(
      id: '1',
      name: 'Casual T-Shirt',
      description:
          "Yuqori sifatli paxtadan tikilgan oddiy futbolka. Kundalik kiyim sifatida ideal tanlov bo'lib, nafas oladigan va qulay matoga ega.",
      price: 15.99,
      imagePath:
          'https://chriscross.in/cdn/shop/files/ChrisCrossPlainBlackcottonT-Shirt_1024x.jpg?v=1695634950',
      categoryId: '1',
    ),
    Product(
      id: '2',
      name: 'Leather Jacket',
      description:
          "Ko'p yillik modadan chiqmagan, haqiqiy teridan tikilgan kurtka. Ushbu kurtka har qanday kiyim-kechak yig'ilishining mukammal qo'shimchasidir.",
      price: 59.99,
      imagePath:
          'https://i.pinimg.com/564x/16/5f/61/165f61ffd41125654bda33091638daa5.jpg',
      categoryId: '1',
    ),
    Product(
      id: '3',
      name: 'Bluetooth Headphones',
      description:
          "Simlarsiz qulaylik bilan yuqori sifatli ovozdan bahramand bo'ling. Bu quloqchinlar uzoq muddatli ishlash va qulay moslashuvni ta'minlaydi.",
      price: 29.99,
      imagePath:
          'https://cdn.thewirecutter.com/wp-content/media/2023/07/bluetoothheadphones-2048px-0876.jpg?auto=webp&quality=75&crop=1.91:1&width=1200',
      categoryId: '2',
    ),
    Product(
      id: '4',
      name: 'Smartphone',
      description:
          "Eng so'nggi texnologiyalar bilan jihozlangan zamonaviy smartfon. Tez ishlash, ajoyib kamera va keng ko'lamli funksiyalarni taklif etadi.",
      price: 299.99,
      imagePath: 'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9',
      categoryId: '2',
    ),
    Product(
      id: '5',
      name: '4K Television',
      description:
          "To'liq 4K tasvir sifati bilan jonli va aniq tasvirlardan zavqlaning. Uy kinoteatri uchun mukammal tanlov.",
      price: 499.99,
      imagePath:
          'https://www.cnet.com/a/img/resize/e973f7fe9aaac6290a034d4b653fe18948de7299/hub/2022/10/18/ac352ecd-724e-47dd-87ba-903a155d5478/budget-tvs-6166.jpg?auto=webp&fit=crop&height=360&width=640',
      categoryId: '2',
    ),
    Product(
      id: '6',
      name: 'Blender',
      description:
          "Kuchli va ko'p funktsiyali blender, mazali kokteyllar, smuzilar va boshqa ichimliklar tayyorlash uchun ajoyib vosita.",
      price: 39.99,
      imagePath:
          'https://api.cabinet.smart-market.uz/uploads/images/ff808181a0c6e8aa47aebbee',
      categoryId: '3',
    ),
    Product(
      id: '7',
      name: 'Ceramic Vase',
      description:
          "Go'zal va zamonaviy dizaynga ega bo'lgan keramik vaza. Uy dekoratsiyasi uchun ajoyib aksessuar.",
      price: 25.99,
      imagePath:
          'https://i.etsystatic.com/19596701/r/il/9ea49a/3029243300/il_fullxfull.3029243300_3u5t.jpg',
      categoryId: '3',
    ),
    Product(
      id: '8',
      name: 'Cooking Pan',
      description:
          "Oliy sifatli oshxona idishi. Uzoq muddatli foydalanish uchun mo'ljallangan va teflon qoplamasi bilan yopishmaydigan sirtni ta'minlaydi.",
      price: 19.99,
      imagePath:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_JUdjvEVp39zM8lmEJ_n7G4Osq8oj2RZCjg&s',
      categoryId: '3',
    ),
    Product(
      id: '9',
      name: 'Yoga Mat',
      description:
          "Yog'a va boshqa mashqlar uchun mos keladigan, yuqori sifatli va silliq sirtga ega bo'lgan yoga matosi.",
      price: 14.99,
      imagePath:
          'https://m.media-amazon.com/images/I/71b5fW+s18L._AC_UF1000,1000_QL80_.jpg',
      categoryId: '4',
    ),
    Product(
      id: '10',
      name: 'Dumbbells Set',
      description:
          "Uyda mashq qilish uchun ideal tanlov. Turli og'irliklardagi hantellar to'plami, mustahkam va qo'lda qulay.",
      price: 49.99,
      imagePath:
          'https://cdn11.bigcommerce.com/s-r2fl439k1s/images/stencil/original/products/285/3650/3-Pair_Neoprene_Dumbbell_Set_with_Case_Marcy_NDS-21.1__93310.1671743487.jpg',
      categoryId: '4',
    ),
    Product(
      id: '11',
      name: 'Running Shoes',
      description:
          "Eng yaxshi qulaylik va qo'llab-quvvatlash uchun mo'ljallangan yugurish poyafzali. Yengil va bardoshli, uzoq muddat foydalanish uchun mos.",
      price: 75.99,
      imagePath:
          'https://cdn.thewirecutter.com/wp-content/media/2023/09/running-shoes-2048px-5946.jpg?auto=webp&quality=75&width=1024',
      categoryId: '4',
    ),
    Product(
      id: '12',
      name: 'Mountain Bike',
      description:
          "Tog' yo'llarida yurish uchun mustahkam va bardoshli tog' velosipedi. Yengil ramka va kuchli tormoz tizimi bilan jihozlangan.",
      price: 299.99,
      imagePath:
          'https://www.wheelbase.co.uk/wp-content/uploads/2019/06/Feature-Image.jpg',
      categoryId: '4',
    ),
    Product(
      id: '13',
      name: 'Sunglasses',
      description:
          "Yuqori darajadagi ultrabinafsha nurlaridan himoya qiluvchi zamonaviy quyosh ko'zoynaklari. Yozgi kunlar uchun ideal aksessuar.",
      price: 19.99,
      imagePath: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f',
      categoryId: '1',
    ),
    Product(
      id: '14',
      name: 'Smartwatch',
      description:
          "Ko'p funktsiyali zamonaviy aqlli soat. Sog'liqni kuzatish, bildirishnomalar qabul qilish va boshqa ko'plab funksiyalarni taklif etadi.",
      price: 99.99,
      imagePath:
          'https://m.media-amazon.com/images/I/61ksrJ2LsgL._AC_UF894,1000_QL80_.jpg',
      categoryId: '2',
    ),
    Product(
      id: '15',
      name: 'Electric Kettle',
      description:
          "Tez va qulay suv isitish uchun elektr choynak. Katta sig'im va xavfsizlik funksiyalariga ega.",
      price: 24.99,
      imagePath:
          'https://m.media-amazon.com/images/I/61DXNDN5MFL._AC_UF894,1000_QL80_.jpg',
      categoryId: '3',
    ),
    Product(
      id: '16',
      name: 'Leather Wallet',
      description:
          "Klassik dizaynga ega yuqori sifatli teridan tikilgan hamyon. Karta va pul uchun bir nechta bo'limlar mavjud.",
      price: 39.99,
      imagePath: 'https://i.ebayimg.com/images/g/p24AAOSwtnpXmbbo/s-l1200.webp',
      categoryId: '1',
    ),
    Product(
      id: '17',
      name: 'Laptop',
      description:
          "Yuqori unumdorlikka ega bo'lgan noutbuk. Ish, o'qish va o'yinlar uchun moslashuvchan va kuchli vosita.",
      price: 999.99,
      imagePath: 'https://images.unsplash.com/photo-1517336714731-489689fd1ca8',
      categoryId: '2',
    ),
    Product(
      id: '18',
      name: 'Coffee Maker',
      description:
          "Uyda baristalik darajasida qahva tayyorlash uchun qulay va ishonchli qahva mashinasi.",
      price: 79.99,
      imagePath:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2fFn8FAAdbi0Bi9IC7BdpIxa-eCBhajvmVw&s',
      categoryId: '3',
    ),
    Product(
      id: '19',
      name: 'Camping Tent',
      description:
          "Tashqi makonda dam olish uchun ideal bo'lgan ko'p joyli lager chodiri. Kuchli va bardoshli materiallardan qilingan.",
      price: 129.99,
      imagePath: 'https://images.unsplash.com/photo-1518756131217-31eb79b20e8f',
      categoryId: '4',
    ),
    Product(
      id: '20',
      name: 'Backpack',
      description:
          "Sarguzashtlar va kundalik foydalanish uchun mo'ljallangan yengil va keng sig'imli ryukzak.",
      price: 49.99,
      imagePath: 'https://images.unsplash.com/photo-1510627498534-cf7e9002facc',
      categoryId: '4',
    ),
  ];

}
