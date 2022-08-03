import SwiftUI

extension View where Self: ChartBase {
	
	/// Set data for a chart
	/// - Parameter data: array of `Double`
	/// - Returns: modified `View` with data attached
    public func data(_ data: [Double]) -> some View {
      chartData.data = data.map { ("", $0, 0.0) }
        return self
            .environmentObject(chartData)
            .environmentObject(ChartValue())
    }

    public func data(_ data: [(String, Double)]) -> some View {
        chartData.data = data.map{ ($0, $1, 0.0)}
        return self
            .environmentObject(chartData)
            .environmentObject(ChartValue())
    }

  public func data(_ data: [(String, Double, Double)]) -> some View {
      chartData.data = data.map{ ($0, $1, $2)}
      return self
          .environmentObject(chartData)
          .environmentObject(ChartValue())
  }

}
