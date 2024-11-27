//Задача 5: Использование MainActor
func fetchAndUpdateUI() async {
    let data = try! await fetchData(from: URL(string: "https://example.com")!)
    updateUI(with: data) // Обновление UI вне главного потока
}