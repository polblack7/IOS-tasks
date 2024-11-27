// Задача 2: Проблема с TaskGroup
func loadAllStrings(from urls: [URL]) async -> [String] {
    var results: [String] = []
    await withTaskGroup(of: String.self) { group in
        for url in urls {
            group.addTask {
                return try await fetchString(from: url)
            }
        }
    }
    return results
}