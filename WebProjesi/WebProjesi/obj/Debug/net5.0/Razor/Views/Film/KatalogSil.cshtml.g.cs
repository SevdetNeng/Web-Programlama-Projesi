#pragma checksum "C:\Users\sevdet\source\repos\WebProjesi\WebProjesi\Views\Film\KatalogSil.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "e645ca647aec6d520accbef84b6ee75211a5bdf5"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Film_KatalogSil), @"mvc.1.0.view", @"/Views/Film/KatalogSil.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "C:\Users\sevdet\source\repos\WebProjesi\WebProjesi\Views\_ViewImports.cshtml"
using WebProjesi;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "C:\Users\sevdet\source\repos\WebProjesi\WebProjesi\Views\_ViewImports.cshtml"
using WebProjesi.Models;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"e645ca647aec6d520accbef84b6ee75211a5bdf5", @"/Views/Film/KatalogSil.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"1fcc2d6341d3e3cc12bd08e9406549729e55ce1b", @"/Views/_ViewImports.cshtml")]
    public class Views_Film_KatalogSil : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<WebProjesi.Models.Film>
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("method", "post", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "KatalogSil", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        #line hidden
        #pragma warning disable 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext __tagHelperExecutionContext;
        #pragma warning restore 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner __tagHelperRunner = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner();
        #pragma warning disable 0169
        private string __tagHelperStringValueBuffer;
        #pragma warning restore 0169
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __backed__tagHelperScopeManager = null;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __tagHelperScopeManager
        {
            get
            {
                if (__backed__tagHelperScopeManager == null)
                {
                    __backed__tagHelperScopeManager = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager(StartTagHelperWritingScope, EndTagHelperWritingScope);
                }
                return __backed__tagHelperScopeManager;
            }
        }
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.FormTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper;
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.RenderAtEndOfFormTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper;
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.InputTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("\r\n");
#nullable restore
#line 8 "C:\Users\sevdet\source\repos\WebProjesi\WebProjesi\Views\Film\KatalogSil.cshtml"
  
    ViewData["Title"] = "Katalogdan Sil";
    

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n<div class=\"col-3  \">\r\n\r\n    <h4 class=\"bg-dark text-center pb-2 rounded pl-2 pr-2 pt-2 text-white\">Film Detayları</h4>\r\n\r\n</div>\r\n<br />\r\n\r\n");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("form", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "e645ca647aec6d520accbef84b6ee75211a5bdf54376", async() => {
                WriteLiteral("\r\n\r\n    ");
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("input", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.SelfClosing, "e645ca647aec6d520accbef84b6ee75211a5bdf54642", async() => {
                }
                );
                __Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.InputTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper);
#nullable restore
#line 22 "C:\Users\sevdet\source\repos\WebProjesi\WebProjesi\Views\Film\KatalogSil.cshtml"
__Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper.For = ModelExpressionProvider.CreateModelExpression(ViewData, __model => __model.Id);

#line default
#line hidden
#nullable disable
                __tagHelperExecutionContext.AddTagHelperAttribute("asp-for", __Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper.For, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
                BeginWriteTagHelperAttribute();
                __tagHelperStringValueBuffer = EndWriteTagHelperAttribute();
                __tagHelperExecutionContext.AddHtmlAttribute("hidden", Html.Raw(__tagHelperStringValueBuffer), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.Minimized);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                WriteLiteral(@"




    <div>
        <div class=""row"">


            <div class=""col cardFilm card text-white"">
                <div class=""card-body"">
                    <div class=""row no-gutters"">
                        <div class=""col-sm-4"">
                            <img");
                BeginWriteAttribute("src", " src=\"", 719, "\"", 744, 1);
#nullable restore
#line 35 "C:\Users\sevdet\source\repos\WebProjesi\WebProjesi\Views\Film\KatalogSil.cshtml"
WriteAttributeValue("", 725, Model.filmResimURL, 725, 19, false);

#line default
#line hidden
#nullable disable
                EndWriteAttribute();
                WriteLiteral(" class=\"card-img kartresim\" alt=\"...\">\r\n                        </div>\r\n                        <div class=\"col\">\r\n                            <div class=\"card-body\">\r\n                                <h2 class=\"card-title text-center\">");
#nullable restore
#line 39 "C:\Users\sevdet\source\repos\WebProjesi\WebProjesi\Views\Film\KatalogSil.cshtml"
                                                              Write(Model.filmIsmi);

#line default
#line hidden
#nullable disable
                WriteLiteral("</h2>\r\n                                <h3 class=\"card-title text-center\"> ");
#nullable restore
#line 40 "C:\Users\sevdet\source\repos\WebProjesi\WebProjesi\Views\Film\KatalogSil.cshtml"
                                                               Write(Model.filmTuru);

#line default
#line hidden
#nullable disable
                WriteLiteral("</h3>\r\n                                <br />\r\n                                <h4 class=\"card-text pl-4 pr-4\">");
#nullable restore
#line 42 "C:\Users\sevdet\source\repos\WebProjesi\WebProjesi\Views\Film\KatalogSil.cshtml"
                                                           Write(Model.filmAciklamasi);

#line default
#line hidden
#nullable disable
                WriteLiteral(@"</h4>

                            </div>
                        </div>
                    </div>
                </div>

                <div class=""align-self-end"">
                    <input type=""submit"" class=""btn btn-info  w-100"" value=""Katalogdan Sil"" />
                </div>
                <br />

            </div>

        </div>
    </div>
    <br />


");
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.FormTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.RenderAtEndOfFormTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper.Method = (string)__tagHelperAttribute_0.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_0);
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper.Action = (string)__tagHelperAttribute_1.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_1);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n\r\n\r\n\r\n");
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<WebProjesi.Models.Film> Html { get; private set; }
    }
}
#pragma warning restore 1591
