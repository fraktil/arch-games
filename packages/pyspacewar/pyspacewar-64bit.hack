--- src/pyspacewar/ui.py	2006-12-25 19:27:33.000000000 +0200
+++ src/pyspacewar/ui.py~	2008-10-21 13:38:44.000000000 +0200
@@ -842,7 +842,7 @@
         # It might be possible to do this in a simpler way: see
         # http://aspn.activestate.com/ASPN/Mail/Message/pygame-users/2915311
         # http://aspn.activestate.com/ASPN/Mail/Message/pygame-users/2814793
-        array[:] = (self.mask * self.alpha / 255).astype(Numeric.UnsignedInt8)
+        #array[:] = (self.mask * self.alpha / 255).astype(Numeric.UnsignedInt8)
         del array
         surface.blit(self.image, (x, y))
         if not self.paused:
