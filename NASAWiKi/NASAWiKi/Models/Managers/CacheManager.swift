//
//  CacheManager.swift
//  NASAWiKi
//
//  Created by Александр Астапенко on 31.05.22.
//

import AlamofireImage

// не поддается наследованию и все его методы косвенным образом приобретают свойство final
final class CacheManager {
    // MARK: Lifecycle

    private init() {}

    // MARK: Internal

    static let shared = CacheManager()

    let imageCache = AutoPurgingImageCache(
        memoryCapacity: 100_000_000_000,
        preferredMemoryUsageAfterPurge: 60_000_000_000
    )
}
