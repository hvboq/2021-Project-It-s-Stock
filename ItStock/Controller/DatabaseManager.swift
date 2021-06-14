//
//  DatabaseManager.swift
//  ItStock
//
//  Created by 여동민 on 2021/05/03.
//

import Foundation
import RealmSwift

class DatabaseManager {

    static let shared = DatabaseManager()

    private let realm: Realm

    private init() {
        self.realm = try! Realm()
    }

    /**
     realm 로컬 DB로 Item 추가(쓰기) 기능을 수행합니다.

     - Parameters:
     - item: DB에 추가할 아이템
     */
    func add<T: Object>(_ item: T) {
        do {
            try realm.write {
                realm.add(item)
            }
        } catch {
            print("Faild to add!")
        }
    }

    func remove<T: Object>(_ item: T) {
        do {
            try realm.write {
                realm.delete(item)
            }
        } catch {
            print("Faild to remove")
        }
    }

    func getStock<T: Object>(type: T.Type) -> Results<T> {
        let result: Results<T>
        result = realm.objects(T.self)

        return result
    }
 }
