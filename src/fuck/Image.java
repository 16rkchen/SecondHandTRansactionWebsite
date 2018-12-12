package fuck;

import java.io.File;

public class Image 
{
	private File file;
    Image()
    {
    	super();
    }
    
    public Image(File file)
    {
    	super();
    	this.file=file;
	}
	public File getFile() 
    {
    	return file;
    }
}
