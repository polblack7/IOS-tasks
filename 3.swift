// Задача 3: Проблема с отменой задачи
func fetchAllData(with urls: [URL]) async throws -> [Data] {
    var results: [Data] = []
    for url in urls {
        let data = try await fetchData(from: url)
        results.append(data)
    }
    return results
}