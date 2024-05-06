//
//  NetworkingAPIHealthServices+Extensions.swift
//  ""
//
//  Created by Himanshu on 17/10/2023.
//

import Combine
import Foundation

extension ""API.Health {
    static func allCaregiversList() -> AnyPublisher<[RelationInterpretationData], Error> {
        Publishers.CombineLatest(
            ""API.Health.caregiversList()
                .repeating()
                .mapError({ $0 as Error }),
            ConstantsStore.constantsPublisher()
                .map(\.caregiverRelationLabels)
        )
        .map({ (relationData, relationNames) in
            relationData.compactMap({ RelationInterpretationData(relationData: $0, relation: .caregiver, relationNames: relationNames) })
        })
        .eraseToAnyPublisher()
    }
    
    static func allPatientsList() -> AnyPublisher<[RelationInterpretationData], Error> {
        Publishers.CombineLatest(
            ""API.Health.patientList()
                .repeating()
                .mapError({ $0 as Error }),
            ConstantsStore.constantsPublisher()
                .map(\.caregiverRelationLabels)
        )
        .map({ (relationData, relationNames) in
            relationData.compactMap({ RelationInterpretationData(relationData: $0, relation: .patient, relationNames: relationNames) })
        })
        .eraseToAnyPublisher()
    }
}
