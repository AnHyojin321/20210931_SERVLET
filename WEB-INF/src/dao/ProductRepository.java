package dao;
import java.util.ArrayList;
import dto.Product;

public class ProductRepository {

	private ArrayList<Product> listOfProducts = new ArrayList<Product>(); // ArrayList를 Product로 캐스팅
       private static ProductRepository instance = new ProductRepository();

   public static ProductRepository getInstance(){
	return instance;
   }


	public ProductRepository() {
		Product chicken01 = new Product("P1234", "후라이드치킨", 19000);
		chicken01.setDescription("신선함과 바삭함이 살아있어 더 맛있는 치킨");
		chicken01.setCategory("뼈");
		chicken01.setManufacturer("국내산");
		chicken01.setUnitsInStock(100);
		chicken01.setCondition("New");
        chicken01.setFilename("P1234.png");

        
        Product chicken02 = new Product("P1235", "양념치킨", 20000);
		chicken02.setDescription("건강한 식재료와 천연재료로 양념하여 더욱 새콤달콤한 맛");
		chicken02.setCategory("뼈");
		chicken02.setManufacturer("국내산");
		chicken02.setUnitsInStock(70);
		chicken02.setCondition("Refurbished");
        chicken02.setFilename("P1235.png");


		Product chicken03 = new Product("P1236", "맵슐랭치킨", 21000);
		chicken03.setDescription("정통 마요소스와 청양고추가 어우러져 달고 부드러운 매운맛이 일품");
		chicken03.setCategory("뼈");
		chicken03.setManufacturer("국내산");
		chicken03.setUnitsInStock(53);
		chicken03.setCondition("Old");
        chicken03.setFilename("P1236.png");

        
        Product chicken04 = new Product("P1237", "소보로치킨", 19000);
		chicken04.setDescription("100% 국내산 닭가슴살에 올록볼록 바삭한 튀김옷을 입혀 부드럽고 담백한 맛");
		chicken04.setCategory("순살");
		chicken04.setManufacturer("국내산");
		chicken04.setUnitsInStock(17);
		chicken04.setCondition("Old");
        chicken04.setFilename("P1237.png");

        
        Product chicken05 = new Product("P1238", "불패순살치킨", 22000);
		chicken05.setDescription("100% 닭다리살에 블랙페퍼와 매콤한 스모크 소스를 더하고 고다치즈 소스로 풍부하게 마무리한 완벽한 맵단 치킨");
		chicken05.setCategory("순살");
		chicken05.setManufacturer("국내산");
		chicken05.setUnitsInStock(9);
		chicken05.setCondition("Old");
        chicken05.setFilename("P1238.png");

        
        Product chicken06 = new Product("P1239", "티키타코순살치킨", 23000);
		chicken06.setDescription("토마토/과카몰리/사워크림 3색 소스와 명품 치킨의 절묘한 티키타카에 나초칩까지 더한 이국적인 맛");
		chicken06.setCategory("순살");
		chicken06.setManufacturer("국내산");
		chicken06.setUnitsInStock(36);
		chicken06.setCondition("Old");
        chicken06.setFilename("P1239.png");

        Product chicken07 = new Product("P1240", "3반치킨세트", 30000);
		chicken07.setDescription("세 가지 맛을 동시에 즐길 수 있는 후라이드치킨세트!");
		chicken07.setCategory("뼈");
		chicken07.setManufacturer("국내산");
		chicken07.setUnitsInStock(15);
		chicken07.setCondition("Old");
        chicken07.setFilename("P1240.png");
        
        Product chicken08 = new Product("P1241", "3반순살치킨세트", 32000);
		chicken08.setDescription("세 가지 맛을 동시에 즐길 수 있는 후라이드치킨세트!");
		chicken08.setCategory("순살");
		chicken08.setManufacturer("국내산");
		chicken08.setUnitsInStock(20);
		chicken08.setCondition("Old");
        chicken08.setFilename("P1241.png");

        Product chicken09 = new Product("P1242", "맵슐랭피자", 23000);
		chicken09.setDescription("맛있는 맵슐랭 피자");
		chicken09.setCategory("피자");
		chicken09.setManufacturer("국내산");
		chicken09.setUnitsInStock(3);
		chicken09.setCondition("Old");
        chicken09.setFilename("P1242.png");


		
		// 위와 같이 상품 초기화 하고 아래에 상품을 추가

		listOfProducts.add(chicken01);
		listOfProducts.add(chicken02);
		listOfProducts.add(chicken03);
        listOfProducts.add(chicken04);
        listOfProducts.add(chicken05);
        listOfProducts.add(chicken06);
        listOfProducts.add(chicken07);
        listOfProducts.add(chicken08);
        listOfProducts.add(chicken09);
		// listOfProducts.add(상품명);
	}

	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}
    
    public Product getProductById(String productId) {
		Product productById = null;

		for (int i = 0; i < listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if (product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
	}
    public void addProduct(Product product) {
	listOfProducts.add(product);
   }


}