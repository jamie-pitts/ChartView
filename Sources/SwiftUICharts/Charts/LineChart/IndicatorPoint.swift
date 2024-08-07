import SwiftUI

/// A dot representing a single data point as user moves finger over line in `LineChart`
@available(iOS 14, *)
struct IndicatorPoint: View {
	/// The content and behavior of the `IndicatorPoint`.
	///
	/// A filled circle with a thick white outline and a shadow
    public var body: some View {
        ZStack {
            Circle()
                .fill(ChartColors.indicatorKnob)
            Circle()
                .stroke(Color.white, style: StrokeStyle(lineWidth: 4))
        }
        .frame(width: 14, height: 14)
        .shadow(color: ChartColors.legendColor, radius: 6, x: 0, y: 6)
    }
}

@available(iOS 14, *)
struct IndicatorPoint_Previews: PreviewProvider {
    static var previews: some View {
        IndicatorPoint()
    }
}
