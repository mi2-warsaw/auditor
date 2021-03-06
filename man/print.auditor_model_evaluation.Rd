% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/print.R
\name{print.auditor_model_evaluation}
\alias{print.auditor_model_evaluation}
\title{Prints Model Evaluation Summary}
\usage{
\method{print}{auditor_model_evaluation}(x, ...)
}
\arguments{
\item{x}{an object \code{auditor_model_evaluation} created with \code{\link{model_evaluation}} function.}

\item{...}{other parameters}
}
\description{
Prints Model Evaluation Summary
}
\examples{
data(titanic_imputed, package = "DALEX")

# fit a model
model_glm <- glm(survived ~ ., family = binomial, data = titanic_imputed)

glm_audit <- audit(model_glm,
                   data= titanic_imputed,
                   y = titanic_imputed$survived)

# validate a model with auditor
model_evaluation(glm_audit)


}
