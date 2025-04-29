using Dal.Converters;
using Dal.Modules;
using Microsoft.EntityFrameworkCore;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

builder.Services.AddCors(option =>
{
    option.AddPolicy("AllowAllOrigins",
        builder => builder.AllowAnyOrigin()
        .AllowAnyMethod()
        .AllowAnyHeader());

});

builder.Services.AddControllers();
builder.Services.AddControllers().AddJsonOptions(options =>
{
    options.JsonSerializerOptions.Converters.Add(new DateOnlyJsonConverter());
});
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

builder.Services.AddScoped<IDal.ProductIDal<Dto.ProductDto>, Dal.Dal.ProductDal>();
builder.Services.AddScoped<IBll.ProductIBll<Dto.ProductDto>, Bll.ProductBll>();
builder.Services.AddScoped<IDal.CostumerIDal<Dto.CostumerDto>, Dal.Dal.CostumerDal>();
builder.Services.AddScoped<IBll.CostumerIBll<Dto.CostumerDto>, Bll.CostumerBll>();
builder.Services.AddScoped<IBll.ShoppingBasketIBll<Dto.PurchaseDetailsDto>, Bll.ShoppingBasketBll>();
builder.Services.AddScoped<IDal.ShoppingBasketIDal<Dto.ShoppingBasketDto>, Dal.Dal.ShoppingBasketDal>();

builder.Services.AddScoped<IDal.PurchaseDetailsIDal<Dto.PurchaseDetailsDto>, Dal.Dal.PurchaseDetailDal>();



builder.Services.AddDbContext<TwinsDreamContext>(option =>
option.UseSqlServer(builder.Configuration.GetConnectionString("TwinConnection")));

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseCors("AllowAllOrigins");
app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();

