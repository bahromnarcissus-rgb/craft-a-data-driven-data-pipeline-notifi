import Foundation

// Define a data structure to represent the data pipeline
struct DataPipeline {
    let id: Int
    let name: String
    let dataSource: String
    let destination: String
    let status: String
}

// Define a notifier class to send notifications for the data pipeline
class DataPipelineNotifier {
    func sendNotification(pipeline: DataPipeline) {
        print("Sending notification for pipeline \(pipeline.name)...")
        
        // Simulate sending a notification (e.g., email, SMS, etc.)
        print("Notification sent!")
    }
}

// Define a data-driven data pipeline manager class
class DataPipelineManager {
    private var pipelines: [DataPipeline] = []
    private let notifier: DataPipelineNotifier
    
    init(notifier: DataPipelineNotifier) {
        self.notifier = notifier
    }
    
    func addPipeline(_ pipeline: DataPipeline) {
        pipelines.append(pipeline)
    }
    
    func processPipelines() {
        for pipeline in pipelines {
            print("Processing pipeline \(pipeline.name)...")
            
            // Simulate processing the pipeline (e.g., data transformation, analytics, etc.)
            print("Pipeline processed.")
            
            // Send notification for the pipeline
            notifier.sendNotification(pipeline: pipeline)
        }
    }
}

// Test case
let notifier = DataPipelineNotifier()
let manager = DataPipelineManager(notifier: notifier)

let pipeline1 = DataPipeline(id: 1, name: "Pipeline 1", dataSource: "Source 1", destination: "Destination 1", status: "active")
let pipeline2 = DataPipeline(id: 2, name: "Pipeline 2", dataSource: "Source 2", destination: "Destination 2", status: "inactive")

manager.addPipeline(pipeline1)
manager.addPipeline(pipeline2)

manager.processPipelines()