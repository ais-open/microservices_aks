 FROM microsoft/dotnet:2.2-sdk AS builder
 WORKDIR /source

 # caches restore result by copying csproj file separately
 COPY *.csproj .
 RUN dotnet restore

 # copies the rest of your code
 COPY . .
 RUN dotnet publish --output /app/ --configuration Release

 # Stage 2
 FROM microsoft/dotnet:2.2-aspnetcore-runtime
 WORKDIR /app
 COPY --from=builder /app .
 EXPOSE 80
 ENTRYPOINT ["dotnet", "BookReview-Category-WebApi.dll"]