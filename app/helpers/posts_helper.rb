module PostsHelper
  
  
  
  def isPicture?(file)
    pictureExt = %w(.jpg .jpeg .gif .png)
    ext=File.extname(file)
    
    return pictureExt.include?(ext)
  end
  
  def isVideo?(file)
    videoExt=%(.mp4 .MOV .wmv)
    ext=File.extname(file)
    return videoExt.include?(ext)
  end
end
