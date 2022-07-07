
# Hope this Specflow tutorial really works

Steps:
https://medium.com/@uppadhyayraj/specflow-integration-in-vs-code-single-ide-across-different-platforms-dac954aedf9e

Source:
https://github.com/SpecFlowOSS/SpecFlow-Examples

Project folder to use in this demo
```
OutputAPI/CalculatorSelenium/CalculatorSelenium.Specs
```

# FAQ: Hurdles that any tutorials will not tell you

## Q1: How to build .net project anyway?
Open VSCode. Install any extensions and SDKs that are needed to enable this step. Right click .sln file. Select build project. 

## Q2: Test explorer cannot find test cases
First test you cmd dotnet can locate the test
```
dotnet test path/OutputAPI/CalculatorSelenium/CalculatorSelenium.Specs
```

If tests are located, save a workspace in **same folder as your .sln**

If you prefer a separate location, try adding a setting in the workspace (i didn't make it tho)
```
{
	"folders": [
		{
			"path": "."
		}
	],
	"settings": {
		"dotnet-test-explorer.testProjectPath": "path/to/your/src/OutputAPI/CalculatorSelenium/CalculatorSelenium.Specs"
	}
}
```

## Q3: Wait. What is a workspace?
VSCode >> File > Open Folder >> Select the project Folder. Then VSCode >> File > Save workspace as ... 


## Q4: .net Version wrong?
Fix it here: CalculatorSelenium.Specs.csproj. This need to be the same as **dotnet --version** 
```
  <PropertyGroup>
    <TargetFramework>netcoreapp6.0</TargetFramework>
  </PropertyGroup>
```

## Q5: OpenQA.Selenium.WebDriverException : unknown error: cannot find Chrome binary
Install it
```
dotnet add package Selenium.WebDriver.ChromeDriver --version 103.0.5060.5300
```

## Q6: Can I manage package in solution explorer? 
Yes. If you have VSCode solution explorer (and it finds your .sln successfully...), you can manage package there. A quick trick is placing your .code-workspace and .sln in the **same folder**.


## Q7: Still cannot find the chrome binary?
Did you install chrome browser? If no, install it.


## Q8: System.InvalidOperationException : session not created: This version of ChromeDriver only supports Chrome version xxx. Current browser version is yyy
Chrome driver and chrome browser version do not matach. Reinstall either of them


## Q9: dotnet build/test return a MSB3021: Unable to copy file error?
Files are locked. Try restart VSCode, terminals and windows.
If fail, try next level, rebuild the whole project and packages 1 by 1.

