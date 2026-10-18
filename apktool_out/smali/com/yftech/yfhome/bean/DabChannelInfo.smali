.class public Lcom/yftech/yfhome/bean/DabChannelInfo;
.super Ljava/lang/Object;
.source "DabChannelInfo.java"


# instance fields
.field private caApplied:Z

.field private caId:I

.field private dynPty:I

.field private ensembleId:I

.field private ensembleLabel:Lcom/yftech/car/media/radio/dab/entity/DabLabel;

.field private ensembleTab:I

.field private frequency:J

.field private internTableIdDpty:I

.field private internTableIdSpty:I

.field private pdFlag:B

.field private propertiesTab:I

.field private propertieslabel:Lcom/yftech/car/media/radio/dab/entity/DabLabel;

.field private serviceId:J

.field private statPty:I


# direct methods
.method public constructor <init>(JILcom/yftech/car/media/radio/dab/entity/DabLabel;Lcom/yftech/car/media/radio/dab/entity/DabProperties;I)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-wide p1, p0, Lcom/yftech/yfhome/bean/DabChannelInfo;->frequency:J

    .line 55
    iput p3, p0, Lcom/yftech/yfhome/bean/DabChannelInfo;->ensembleId:I

    .line 56
    iput-object p4, p0, Lcom/yftech/yfhome/bean/DabChannelInfo;->ensembleLabel:Lcom/yftech/car/media/radio/dab/entity/DabLabel;

    .line 57
    iput p6, p0, Lcom/yftech/yfhome/bean/DabChannelInfo;->ensembleTab:I

    .line 58
    invoke-virtual {p5}, Lcom/yftech/car/media/radio/dab/entity/DabProperties;->getPdFlag()B

    move-result p1

    iput-byte p1, p0, Lcom/yftech/yfhome/bean/DabChannelInfo;->pdFlag:B

    .line 59
    invoke-virtual {p5}, Lcom/yftech/car/media/radio/dab/entity/DabProperties;->getServiceId()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/yftech/yfhome/bean/DabChannelInfo;->serviceId:J

    .line 60
    invoke-virtual {p5}, Lcom/yftech/car/media/radio/dab/entity/DabProperties;->getLabel()Lcom/yftech/car/media/radio/dab/entity/DabLabel;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/yfhome/bean/DabChannelInfo;->propertieslabel:Lcom/yftech/car/media/radio/dab/entity/DabLabel;

    .line 61
    invoke-virtual {p5}, Lcom/yftech/car/media/radio/dab/entity/DabProperties;->getCaId()I

    move-result p1

    iput p1, p0, Lcom/yftech/yfhome/bean/DabChannelInfo;->caId:I

    .line 62
    invoke-virtual {p5}, Lcom/yftech/car/media/radio/dab/entity/DabProperties;->isCaApplied()Z

    move-result p1

    iput-boolean p1, p0, Lcom/yftech/yfhome/bean/DabChannelInfo;->caApplied:Z

    .line 63
    invoke-virtual {p5}, Lcom/yftech/car/media/radio/dab/entity/DabProperties;->getInternTableIdSpty()I

    move-result p1

    iput p1, p0, Lcom/yftech/yfhome/bean/DabChannelInfo;->internTableIdSpty:I

    .line 64
    invoke-virtual {p5}, Lcom/yftech/car/media/radio/dab/entity/DabProperties;->getStatPty()I

    move-result p1

    iput p1, p0, Lcom/yftech/yfhome/bean/DabChannelInfo;->statPty:I

    .line 65
    invoke-virtual {p5}, Lcom/yftech/car/media/radio/dab/entity/DabProperties;->getInternTableIdDpty()I

    move-result p1

    iput p1, p0, Lcom/yftech/yfhome/bean/DabChannelInfo;->internTableIdDpty:I

    .line 66
    invoke-virtual {p5}, Lcom/yftech/car/media/radio/dab/entity/DabProperties;->getDynPty()I

    move-result p1

    iput p1, p0, Lcom/yftech/yfhome/bean/DabChannelInfo;->dynPty:I

    .line 67
    invoke-virtual {p5}, Lcom/yftech/car/media/radio/dab/entity/DabProperties;->getTab()I

    move-result p1

    iput p1, p0, Lcom/yftech/yfhome/bean/DabChannelInfo;->propertiesTab:I

    return-void
.end method

.method public constructor <init>(Lcom/yftech/yfhome/bean/DabChannelInfo;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p1}, Lcom/yftech/yfhome/bean/DabChannelInfo;->getFrequency()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yftech/yfhome/bean/DabChannelInfo;->frequency:J

    .line 38
    invoke-virtual {p1}, Lcom/yftech/yfhome/bean/DabChannelInfo;->getEnsembleId()I

    move-result v0

    iput v0, p0, Lcom/yftech/yfhome/bean/DabChannelInfo;->ensembleId:I

    .line 39
    invoke-virtual {p1}, Lcom/yftech/yfhome/bean/DabChannelInfo;->getEnsembleLabel()Lcom/yftech/car/media/radio/dab/entity/DabLabel;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/yfhome/bean/DabChannelInfo;->ensembleLabel:Lcom/yftech/car/media/radio/dab/entity/DabLabel;

    .line 40
    invoke-virtual {p1}, Lcom/yftech/yfhome/bean/DabChannelInfo;->getEnsembleTab()I

    move-result v0

    iput v0, p0, Lcom/yftech/yfhome/bean/DabChannelInfo;->ensembleTab:I

    .line 41
    invoke-virtual {p1}, Lcom/yftech/yfhome/bean/DabChannelInfo;->getPdFlag()B

    move-result v0

    iput-byte v0, p0, Lcom/yftech/yfhome/bean/DabChannelInfo;->pdFlag:B

    .line 42
    invoke-virtual {p1}, Lcom/yftech/yfhome/bean/DabChannelInfo;->getServiceId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yftech/yfhome/bean/DabChannelInfo;->serviceId:J

    .line 43
    invoke-virtual {p1}, Lcom/yftech/yfhome/bean/DabChannelInfo;->getPropertieslabel()Lcom/yftech/car/media/radio/dab/entity/DabLabel;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/yfhome/bean/DabChannelInfo;->propertieslabel:Lcom/yftech/car/media/radio/dab/entity/DabLabel;

    .line 44
    invoke-virtual {p1}, Lcom/yftech/yfhome/bean/DabChannelInfo;->getCaId()I

    move-result v0

    iput v0, p0, Lcom/yftech/yfhome/bean/DabChannelInfo;->caId:I

    .line 45
    invoke-virtual {p1}, Lcom/yftech/yfhome/bean/DabChannelInfo;->isCaApplied()Z

    move-result v0

    iput-boolean v0, p0, Lcom/yftech/yfhome/bean/DabChannelInfo;->caApplied:Z

    .line 46
    invoke-virtual {p1}, Lcom/yftech/yfhome/bean/DabChannelInfo;->getInternTableIdSpty()I

    move-result v0

    iput v0, p0, Lcom/yftech/yfhome/bean/DabChannelInfo;->internTableIdSpty:I

    .line 47
    invoke-virtual {p1}, Lcom/yftech/yfhome/bean/DabChannelInfo;->getStatPty()I

    move-result v0

    iput v0, p0, Lcom/yftech/yfhome/bean/DabChannelInfo;->statPty:I

    .line 48
    invoke-virtual {p1}, Lcom/yftech/yfhome/bean/DabChannelInfo;->getInternTableIdDpty()I

    move-result v0

    iput v0, p0, Lcom/yftech/yfhome/bean/DabChannelInfo;->internTableIdDpty:I

    .line 49
    invoke-virtual {p1}, Lcom/yftech/yfhome/bean/DabChannelInfo;->getDynPty()I

    move-result v0

    iput v0, p0, Lcom/yftech/yfhome/bean/DabChannelInfo;->dynPty:I

    .line 50
    invoke-virtual {p1}, Lcom/yftech/yfhome/bean/DabChannelInfo;->getPropertiesTab()I

    move-result p1

    iput p1, p0, Lcom/yftech/yfhome/bean/DabChannelInfo;->propertiesTab:I

    :cond_0
    return-void
.end method


# virtual methods
.method public getCaId()I
    .locals 0

    .line 100
    iget p0, p0, Lcom/yftech/yfhome/bean/DabChannelInfo;->caId:I

    return p0
.end method

.method public getDynPty()I
    .locals 0

    .line 120
    iget p0, p0, Lcom/yftech/yfhome/bean/DabChannelInfo;->dynPty:I

    return p0
.end method

.method public getEnsembleId()I
    .locals 0

    .line 75
    iget p0, p0, Lcom/yftech/yfhome/bean/DabChannelInfo;->ensembleId:I

    return p0
.end method

.method public getEnsembleLabel()Lcom/yftech/car/media/radio/dab/entity/DabLabel;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/yftech/yfhome/bean/DabChannelInfo;->ensembleLabel:Lcom/yftech/car/media/radio/dab/entity/DabLabel;

    return-object p0
.end method

.method public getEnsembleTab()I
    .locals 0

    .line 84
    iget p0, p0, Lcom/yftech/yfhome/bean/DabChannelInfo;->ensembleTab:I

    return p0
.end method

.method public getFrequency()J
    .locals 2

    .line 71
    iget-wide v0, p0, Lcom/yftech/yfhome/bean/DabChannelInfo;->frequency:J

    return-wide v0
.end method

.method public getInternTableIdDpty()I
    .locals 0

    .line 116
    iget p0, p0, Lcom/yftech/yfhome/bean/DabChannelInfo;->internTableIdDpty:I

    return p0
.end method

.method public getInternTableIdSpty()I
    .locals 0

    .line 108
    iget p0, p0, Lcom/yftech/yfhome/bean/DabChannelInfo;->internTableIdSpty:I

    return p0
.end method

.method public getPdFlag()B
    .locals 0

    .line 88
    iget-byte p0, p0, Lcom/yftech/yfhome/bean/DabChannelInfo;->pdFlag:B

    return p0
.end method

.method public getPropertiesTab()I
    .locals 0

    .line 124
    iget p0, p0, Lcom/yftech/yfhome/bean/DabChannelInfo;->propertiesTab:I

    return p0
.end method

.method public getPropertieslabel()Lcom/yftech/car/media/radio/dab/entity/DabLabel;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/yftech/yfhome/bean/DabChannelInfo;->propertieslabel:Lcom/yftech/car/media/radio/dab/entity/DabLabel;

    return-object p0
.end method

.method public getServiceId()J
    .locals 2

    .line 92
    iget-wide v0, p0, Lcom/yftech/yfhome/bean/DabChannelInfo;->serviceId:J

    return-wide v0
.end method

.method public getStatPty()I
    .locals 0

    .line 112
    iget p0, p0, Lcom/yftech/yfhome/bean/DabChannelInfo;->statPty:I

    return p0
.end method

.method public isCaApplied()Z
    .locals 0

    .line 104
    iget-boolean p0, p0, Lcom/yftech/yfhome/bean/DabChannelInfo;->caApplied:Z

    return p0
.end method
