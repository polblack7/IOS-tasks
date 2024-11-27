// Задача 4: Ограничение параллельных задач
func processImages(_ images: [Data]) async -> [Data] {
    var results: [Data] = []
    await withTaskGroup(of: Data.self) { group in
        for image in images {
            group.addTask {
                return await processImage(image)
            }
        }
        for await result in group {
            results.append(result)
        }
    }
    return results
}