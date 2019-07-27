function Component()
{

}

Component.prototype.isDefault = function()
{
    return true;
}

Component.prototype.createOperations = function()
{
    try
    {
	component.createOperations();
    }
    catch(e)
    {
	print(e);
    }
    if (installer.value("os") === "win")
    {
	component.addOperation("CreateShortcut" , "@TargetDir@/CakeBot.exe" , "@DesktopDir@/CakeBot.lnk");
    }
}