func bonAppetit(bill: [Int], k: Int, b: Int) -> Void {

    var separetedBill = 0

    for (index, item) in bill.enumerated() {
        if index != k {
            separetedBill += item
        }
    }
    separetedBill = separetedBill/2

    if b == separetedBill {
        print("Bon Appetit")
    } else {
        let cost = b - separetedBill
        print(cost)
    }
}
