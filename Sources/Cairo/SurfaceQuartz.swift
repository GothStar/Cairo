//
//  SurfaceQuartz.swift
//  Cairo
//
//  Copyright © 2017 PureSwift. All rights reserved.
//
import CCairo

#if os(macOS)

    import Cocoa
    public extension Surface {
        final class Quartz : Surface {
            ///Creates a Quartz surface that wraps the given CGContext. The CGContext is assumed to be in the standard Cairo coordinate space (that is, with the origin at the upper left and the Y axis increasing downward). If the CGContext is in the Quartz coordinate space (with the origin at the bottom left), then it should be flipped before this function is called
            public init(graphicsContext: CGContext, width: Int, height: Int) throws {
                let internalPointer = cairo_quartz_surface_create_for_cg_context( graphicsContext, UInt32(width), UInt32(height))!
                try super.init(internalPointer)
            }
            ///Creates a Quartz surface backed by a CGBitmap. The surface is created using the Device RGB (or Device Gray, for A8) color space. All Cairo operations, including those that require software rendering, will succeed on this surface.
            public init(format: ImageFormat, width: Int, height: Int) throws {
                let internalPointer = cairo_quartz_surface_create(cairo_format_t.init(format), UInt32(width), UInt32(height))!
                try super.init(internalPointer)
            }
            public func getCGContext() -> Unmanaged<CGContext>? {
                cairo_quartz_surface_get_cg_context(self.internalPointer)
            }
        }
    }

#endif
