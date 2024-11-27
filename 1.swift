// Задача 1: Проблема с async let
func fetchAllData() async throws -> [Data] {
    var results: [Data] = []
    let data1 = try await fetchData(from: URL(string: "https://example.com/1")!)
    let data2 = try await fetchData(from: URL(string: "https://example.com/2")!)
    let data3 = try await fetchData(from: URL(string: "https://example.com/3")!)
    results.append(data1)
    results.append(data2)
    results.append(data3)
    return results
}