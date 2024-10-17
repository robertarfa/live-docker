from django.db import models
from django.utils import timezone

# Create your models here.
class Video(models.Model):
  title = models.CharField(max_length=100, unique=True, verbose_name="Título")
  description = models.TextField(verbose_name="Descrição")
  thumbnail = models.ImageField(upload_to='thumbnail/', verbose_name="Miniatura")
  video = models.FileField(upload_to='videos/', verbose_name="Vídeo")
  slug = models.SlugField(max_length=100, unique=True, verbose_name="slug")
  published_at = models.DateTimeField(verbose_name="Publicado em", editable=False)
  is_published = models.BooleanField(default=False, verbose_name="Está publicado?")
  num_likes = models.IntegerField(default=0, verbose_name="Número de curtidas", editable=False)
  num_views = models.IntegerField(default=0, verbose_name="Número de visualizações", editable=False)
  tags = models.ManyToManyField('Tag', verbose_name="Tags")

  def save(self, *args, **kwargs):
    if self.is_published and not self.published_at:
      self.published_at = timezone.now()

  class Meta:
    verbose_name = "Vídeo"
    verbose_name_plural = "Vídeos"

  def __str__(self):
    return self.title
  
class Tag(models.Model):
  name = models.CharField(max_length=50, unique=True, verbose_name="Nome")

  def __str__(self):
    return self.name