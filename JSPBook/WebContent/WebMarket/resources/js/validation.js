function CheckAddProduct(){
	
	//var productId = document.getElementById("productId");
	/*var name = document.getElementById("name");
	var unitPrice = document.getElementById("unitPrice");
	var unitsInStock = document.getElementById("unitsInStock");*/
	
	var productId = document.newProduct.productId.value;
	var name = document.newProduct.name.value;
	var unitPrice = document.newProduct.unitPrice.value;
	var unitsInStock = document.newProduct.unitsInStock.value;
	
	// id check
	if(!check(/^P[0-9]{4,11}$/, productId, "[상품 코드]\nP와 숫자를 조합하여 5-12자를 입력\n첫 글자는 P로 시작")){
		return false;
	}
	
	// 상품명 체크
	if(name.length < 4 || name.length > 12){
		alert("[상품명]\n최소 4자, 최대 12자");
		document.newProduct.name.select();
		document.newProduct.name.focus();
		return false;
	}
	
	// 상품 가격 체크
	if(isNaN(unitPrice)){
		alert("[가격]\n숫자만 입력");
		document.newProduct.unitPrice.select();
		document.newProduct.unitPrice.focus();
		return false;
	} else if(!check(/^\d+(?:[.]?[\d]?[\d])?$/, unitPrice, "[가격]\n소수점 둘째 자리까지만 입력")){
		return false;
	}
	
	// 재고 수 체크
	if(isNaN(unitsInStock)){
		alert("[재고 수]\n숫자만 입력");
		document.newProduct.unitsInStock.select();
		document.newProduct.unitsInStock.focus();
		return false;
	}
	
	function check(regExp, e, msg){
		if(regExp.test(e)){
			return true;
		}
		
		alert(msg);
		//e.select();
		//e.focus();
		return false;
	}
	
	document.newProduct.submit()
}